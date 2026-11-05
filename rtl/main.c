/*
 * main.c - Zynq-7020 (ARM Cortex-A9 / Vitis)
 * Real-time EEG Acquisition & SNN Hardware Classification Monitor
 * Powered by snn-fpga Quantized Tile Architecture
 */

#include <stdio.h>
#include <stdint.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "sleep.h"
#include "xparameters.h"
#include "snn_infer.h"

#ifndef XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define BRAM_BASE       0x40000000U
#else
#define BRAM_BASE       XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#endif

// Memory offsets (Word Indices)
#define RAW_START       256U
#define RAW_END         1279U
#define PRODUCER_ADDR   1280U
#define BAND_START      1281U
#define STATUS_ADDR     1289U
#define SNN_CLASS_ADDR  1290U
#define SNN_SEQ_ADDR    1291U

#define BRAM_ADDR(index) (BRAM_BASE + ((index) * 4U))

static inline uint32_t bram_read(uint32_t word_index)
{
    uint32_t addr = BRAM_ADDR(word_index);
    Xil_DCacheInvalidateRange(addr, 4);
    return Xil_In32(addr);
}

static const char* const BAND_NAMES[8] = {
    "Delta     (0.5 - 2.75 Hz)",
    "Theta     (3.5 - 6.75 Hz)",
    "Low Alpha (7.5 - 9.25 Hz)",
    "High Alpha(10.0 - 11.75Hz)",
    "Low Beta  (13.0 - 16.75Hz)",
    "High Beta (17.5 - 29.75Hz)",
    "Low Gamma (31.0 - 39.75Hz)",
    "Mid Gamma (41.0 - 49.75Hz)"
};

static const char* get_snn_state_name(uint32_t class_id)
{
    switch (class_id) {
        case 0: return "THETA (4-7 Hz)  [疲劳 / 瞌睡 / 冥想深沉态]";
        case 1: return "ALPHA (8-12 Hz) [放松 / 平静 / 闭目清醒态]";
        case 2: return "BETA  (13-30Hz) [专注 / 警觉 / 活跃思考态]";
        default: return "UNKNOWN";
    }
}

int main(void)
{
    uint32_t prev_producer = 0;
    uint32_t prev_snn_seq = 0xFFFFFFFFU;
    uint32_t prev_status_seq = 0xFFFFFFFFU;

    xil_printf("\r\n=======================================================\r\n");
    xil_printf("  Zynq-7020 EEG + SNN Real-time Classification Monitor  \r\n");
    xil_printf("  Dual-Port BRAM Base: 0x%08X                          \r\n", BRAM_BASE);
    xil_printf("=======================================================\r\n");

    // snn-fpga Model Parameter Self-Test
    snn_verify_selftest();

    prev_producer = bram_read(PRODUCER_ADDR);

    while (1)
    {
        uint32_t curr_producer = bram_read(PRODUCER_ADDR);
        uint32_t samples_delta = (uint16_t)(curr_producer - prev_producer);
        prev_producer = curr_producer;

        uint32_t status_word = bram_read(STATUS_ADDR);
        uint8_t attention   = (uint8_t)((status_word >> 24) & 0xFF);
        uint8_t meditation  = (uint8_t)((status_word >> 16) & 0xFF);
        uint8_t quality     = (uint8_t)((status_word >> 8)  & 0xFF);
        uint8_t status_seq  = (uint8_t)(status_word & 0xFF);

        uint32_t snn_class = bram_read(SNN_CLASS_ADDR);
        uint32_t snn_seq   = bram_read(SNN_SEQ_ADDR);

        xil_printf("\r\n------------------- [EEG MONITOR TICK] -------------------\r\n");
        xil_printf("[PL Data Rate] Producer: %lu (New Samples: %lu / sec)\r\n",
                   (unsigned long)curr_producer, (unsigned long)samples_delta);

        // Quality check
        if (quality == 200) {
            xil_printf("[Sensor Alert] 信号质量: 200 (电极脱落/未接触头皮!)\r\n");
        } else {
            xil_printf("[TGAM Status] 信号噪声: %u (0为极佳) | 专注度: %u%% | 放松度: %u%%\r\n",
                       quality, attention, meditation);
        }

        // 1. Hardware Kernel SNN Classification (PL Direct Voltage Injection)
        xil_printf("----------------------------------------------------------\r\n");
        xil_printf("[PL SNN Hardware Accelerator]\r\n");
        xil_printf("  -> Result Sequence : %lu\r\n", (unsigned long)snn_seq);
        xil_printf("  -> Classified Class: %lu => %s\r\n",
                   (unsigned long)snn_class, get_snn_state_name(snn_class));

        // 2. Multi-Layer Tile SNN Classifier (snn-fpga Architecture)
        int16_t window_64[64];
        uint32_t start_idx = (curr_producer >= 64) ? (curr_producer - 64) : (1024 + curr_producer - 64);
        for (int i = 0; i < 64; i++) {
            uint32_t buf_slot = (start_idx + i) & 1023U;
            window_64[i] = (int16_t)(bram_read(RAW_START + buf_slot) & 0xFFFFU);
        }
        uint8_t ml_spikes[3] = {0};
        uint32_t ml_class = snn_infer_raw_window(window_64, ml_spikes);

        xil_printf("[snn-fpga Multi-Layer Tile SNN Classifier]\r\n");
        xil_printf("  -> Classified Class: %lu => %s\r\n",
                   (unsigned long)ml_class, get_snn_state_name(ml_class));
        xil_printf("  -> Output Spikes   : Theta=%u, Alpha=%u, Beta=%u\r\n",
                   ml_spikes[0], ml_spikes[1], ml_spikes[2]);
        xil_printf("----------------------------------------------------------\r\n");

        // Raw EEG preview
        uint32_t raw_head_idx = curr_producer & 1023U;
        int16_t raw_sample = (int16_t)(bram_read(RAW_START + raw_head_idx) & 0xFFFFU);
        xil_printf("[Raw EEG Sample] Head Sample: %ld uV (Raw ADC: %d)\r\n",
                   (long)raw_sample, (int)raw_sample);

        // Display Band powers if updated
        if (status_seq != prev_status_seq) {
            prev_status_seq = status_seq;
            xil_printf("[TGAM ASIC 8-Bands Power]:\r\n");
            for (int i = 0; i < 8; i++) {
                uint32_t p = bram_read(BAND_START + i) & 0x00FFFFFFU;
                xil_printf("  * %s : %lu\r\n", BAND_NAMES[i], (unsigned long)p);
            }
        }

        sleep(1);
    }

    return 0;
}
