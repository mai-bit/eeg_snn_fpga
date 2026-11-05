/*
 * rtl/main.c - Zynq-7020 (ARM Cortex-A9 / Vitis)
 * Real-time EEG Acquisition & SNN Hardware Classification Monitor
 */

#include <stdio.h>
#include <stdint.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "sleep.h"
#include "xparameters.h"

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

    xil_printf("\r\n=======================================================\r\n");
    xil_printf("  Zynq-7020 EEG + SNN Real-time Classification Monitor  \r\n");
    xil_printf("  Dual-Port BRAM Base: 0x%08X                          \r\n", BRAM_BASE);
    xil_printf("=======================================================\r\n");

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

        uint32_t snn_class = bram_read(SNN_CLASS_ADDR);
        uint32_t snn_seq   = bram_read(SNN_SEQ_ADDR);

        xil_printf("[HB] Rate: %lu sps | Noise: %u | Attn: %u | Med: %u | SNN Seq: %lu | Class: %lu (%s)\r\n",
                   (unsigned long)samples_delta, quality, attention, meditation,
                   (unsigned long)snn_seq, (unsigned long)snn_class, get_snn_state_name(snn_class));

        sleep(1);
    }

    return 0;
}
