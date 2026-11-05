#ifndef SNN_INFER_H
#define SNN_INFER_H

#include <stdint.h>
#include "xil_printf.h"
#include "model_params.h"

#define SNN_NUM_TILES   20
#define SNN_NUM_INPUTS  64
#define SNN_NUM_HIDDEN  64
#define SNN_NUM_OUTPUTS 16
#define SNN_NUM_STEPS   16
#define SNN_THRESH      64

/**
 * Run SNN inference on an 8-bit quantized input vector of length 64.
 *
 * @param net_in        Array of 64 signed 8-bit input values (-64..64)
 * @param out_spikes    Array of at least 3 elements to store spike counts for classes 0, 1, 2
 * @return              Predicted class ID (0: Theta, 1: Alpha, 2: Beta)
 */
static inline uint32_t snn_infer_core(const int8_t *net_in, uint8_t *out_spikes)
{
    int32_t mem0[SNN_NUM_INPUTS] = {0};
    int32_t mem1[SNN_NUM_HIDDEN] = {0};
    int32_t mem2[SNN_NUM_OUTPUTS] = {0};

    uint8_t spk0[SNN_NUM_INPUTS] = {0};
    uint8_t spk1[SNN_NUM_HIDDEN] = {0};
    uint8_t spk2[SNN_NUM_OUTPUTS] = {0};

    uint8_t spike_accum[SNN_NUM_OUTPUTS] = {0};

    for (int step = 0; step < SNN_NUM_STEPS; step++) {
        // Layer 0: Direct Current Injection (Spike Generation)
        uint8_t spk0_next[SNN_NUM_INPUTS] = {0};
        for (int i = 0; i < SNN_NUM_INPUTS; i++) {
            mem0[i] += (int32_t)net_in[i];
            if (mem0[i] >= SNN_THRESH) {
                spk0_next[i] = 1;
                mem0[i] = 0;
            } else {
                spk0_next[i] = 0;
            }
            if (mem0[i] < -2 * SNN_THRESH) mem0[i] = -2 * SNN_THRESH;
            if (mem0[i] >  2 * SNN_THRESH) mem0[i] =  2 * SNN_THRESH;
        }

        // Layer 1: Synaptic Crossbars (Tiles 0..15: 64 inputs -> 64 hidden)
        int32_t cur1[SNN_NUM_HIDDEN] = {0};
        for (int t = 0; t < 16; t++) {
            int tx = tile_idx_x[t];      // 0..3 (input tile index)
            int ty = tile_idx_y[t] - 4;  // 0..3 (hidden tile index)
            int t_base = t * 256;

            for (int o = 0; o < 16; o++) {
                int out_idx = ty * 16 + o;
                int sum = 0;
                for (int i = 0; i < 16; i++) {
                    int in_idx = tx * 16 + i;
                    if (spk0[in_idx]) {
                        sum += weight[t_base + i * 16 + o];
                    }
                }
                cur1[out_idx] += sum;
            }
        }

        uint8_t spk1_next[SNN_NUM_HIDDEN] = {0};
        for (int j = 0; j < SNN_NUM_HIDDEN; j++) {
            mem1[j] += cur1[j];
            if (mem1[j] >= SNN_THRESH) {
                spk1_next[j] = 1;
                mem1[j] = 0;
            } else {
                spk1_next[j] = 0;
            }
            if (mem1[j] < -2 * SNN_THRESH) mem1[j] = -2 * SNN_THRESH;
            if (mem1[j] >  2 * SNN_THRESH) mem1[j] =  2 * SNN_THRESH;
        }

        // Layer 2: Synaptic Crossbars (Tiles 16..19: 64 hidden -> 16 output)
        int32_t cur2[SNN_NUM_OUTPUTS] = {0};
        for (int t = 16; t < 20; t++) {
            int tx = tile_idx_x[t] - 4;  // 0..3 (hidden tile index)
            int ty = tile_idx_y[t] - 8;  // 0 (output tile index)
            int t_base = t * 256;

            for (int o = 0; o < 16; o++) {
                int out_idx = ty * 16 + o;
                int sum = 0;
                for (int i = 0; i < 16; i++) {
                    int in_idx = tx * 16 + i;
                    if (spk1[in_idx]) {
                        sum += weight[t_base + i * 16 + o];
                    }
                }
                cur2[out_idx] += sum;
            }
        }

        uint8_t spk2_next[SNN_NUM_OUTPUTS] = {0};
        for (int k = 0; k < SNN_NUM_OUTPUTS; k++) {
            mem2[k] += cur2[k];
            if (mem2[k] >= SNN_THRESH) {
                spk2_next[k] = 1;
                mem2[k] = 0;
                spike_accum[k]++;
            } else {
                spk2_next[k] = 0;
            }
            if (mem2[k] < -2 * SNN_THRESH) mem2[k] = -2 * SNN_THRESH;
            if (mem2[k] >  2 * SNN_THRESH) mem2[k] =  2 * SNN_THRESH;
        }

        // Pipeline register delay
        for (int i = 0; i < SNN_NUM_INPUTS; i++) spk0[i] = spk0_next[i];
        for (int j = 0; j < SNN_NUM_HIDDEN; j++) spk1[j] = spk1_next[j];
        for (int k = 0; k < SNN_NUM_OUTPUTS; k++) spk2[k] = spk2_next[k];
    }

    if (out_spikes != 0) {
        out_spikes[0] = spike_accum[0];
        out_spikes[1] = spike_accum[1];
        out_spikes[2] = spike_accum[2];
    }

    // Argmax over classes 0, 1, 2
    uint32_t best_class = 0;
    uint8_t max_spikes = spike_accum[0];
    for (uint32_t c = 1; c < 3; c++) {
        if (spike_accum[c] > max_spikes) {
            max_spikes = spike_accum[c];
            best_class = c;
        }
    }
    return best_class;
}

/**
 * Built-in self-test using the compiled test vector in model_params.h
 */
static inline int snn_verify_selftest(void)
{
    uint8_t spk[3] = {0};
    uint32_t pred = snn_infer_core(network_input, spk);

    xil_printf("[SNN Self-Test] Verified with model_params.h:\r\n");
    xil_printf("  Predicted Class : %lu\r\n", (unsigned long)pred);
    xil_printf("  Spike Histogram : Theta=%u, Alpha=%u, Beta=%u\r\n", spk[0], spk[1], spk[2]);

    if (pred == 0 && spk[0] > 0) {
        xil_printf("  Status          : >>> PASS (Weights & Dynamics Aligned) <<<\r\n\r\n");
        return 0;
    } else {
        xil_printf("  Status          : >>> FAIL <<<\r\n\r\n");
        return -1;
    }
}

/**
 * Classify a 64-sample raw EEG window (e.g. read from BRAM circular buffer).
 */
static inline uint32_t snn_infer_raw_window(const int16_t *raw_buf, uint8_t *out_spikes)
{
    int8_t net_in[SNN_NUM_INPUTS];

    // Compute mean to remove DC offset
    int32_t sum = 0;
    for (int i = 0; i < SNN_NUM_INPUTS; i++) {
        sum += (int32_t)raw_buf[i];
    }
    int16_t dc_offset = (int16_t)(sum / SNN_NUM_INPUTS);

    // Dynamic scale to [-64, 64]
    for (int i = 0; i < SNN_NUM_INPUTS; i++) {
        int32_t val = ((int32_t)raw_buf[i] - (int32_t)dc_offset) / 8;
        if (val > 64) val = 64;
        if (val < -64) val = -64;
        net_in[i] = (int8_t)val;
    }

    return snn_infer_core(net_in, out_spikes);
}

#endif // SNN_INFER_H
