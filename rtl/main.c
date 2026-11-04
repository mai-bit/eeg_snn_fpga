/*
 * main.c - Zynq-7020 / Vitis 2020.2
 * PL writes EEG samples into dual-port BRAM; PS polls producer sequence.
 *
 * BRAM word map:
 * 256..1279 : 1024 signed Raw EEG samples (low 16 bits)
 * 1280      : producer sequence, low 16 bits
 * 1281..1288: eight TGAM EEG power values
 * 1289      : {attention, meditation, signal_quality, status_sequence}
 *
 * Confirm the actual EEG sampling rate before treating FS_HZ as calibrated.
 * 215 Hz is a provisional algorithm assumption, not UART baud rate.
 */

#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xil_types.h"

#define EEG_BRAM_BASE 0x40000000U
#ifdef XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#undef EEG_BRAM_BASE
#define EEG_BRAM_BASE XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#endif

#define BRAM_WORD(a) \
    Xil_In32((UINTPTR)(EEG_BRAM_BASE + ((u32)(a) * 4U)))

#define RAW_BASE       256U
#define PTR_ADDR       1280U
#define BAND_BASE      1281U
#define STATUS_ADDR    1289U
#define RING_SIZE      1024U
#define RING_MASK      (RING_SIZE - 1U)

#define FS_HZ          215.0f
#define NWIN           430U
#define NHOP           108U
#define NBINS          32U

static s16 window_buf[NWIN];
static float bin_power[NBINS];
static u16 window_count = 0;
static u16 read_seq = 0;
static u16 hop_count = 0;

/* 2*cos(2*pi*f/FS), f = 4,5,...,35 Hz, FS = 215 Hz */
static const float goertzel_coeff[NBINS] = {
    1.986350769f, 1.978686736f, 1.969332928f, 1.958297334f,
    1.945589376f, 1.931219907f, 1.915201200f, 1.897546933f,
    1.878272183f, 1.857393411f, 1.834928447f, 1.810896475f,
    1.785318019f, 1.758214922f, 1.729610331f, 1.699528672f,
    1.667995636f, 1.635038151f, 1.600684363f, 1.564963609f,
    1.527906394f, 1.489544365f, 1.449910283f, 1.409037995f,
    1.366962405f, 1.323719444f, 1.279346043f, 1.233880095f,
    1.187360429f, 1.139826770f, 1.091319713f, 1.041880681f
};

static u16 read_producer_seq(void)
{
    u32 a, b;
    do {
        a = BRAM_WORD(PTR_ADDR) & 0xFFFFU;
        b = BRAM_WORD(PTR_ADDR) & 0xFFFFU;
    } while (a != b);
    return (u16)a;
}

static void append_sample(s16 x)
{
    u16 i;
    if (window_count < NWIN) {
        window_buf[window_count++] = x;
    } else {
        for (i = 0; i < NWIN - 1U; ++i)
            window_buf[i] = window_buf[i + 1U];
        window_buf[NWIN - 1U] = x;
    }
}

static void run_goertzel(void)
{
    u32 b, n;
    for (b = 0; b < NBINS; ++b) {
        float s1 = 0.0f, s2 = 0.0f;
        for (n = 0; n < NWIN; ++n) {
            float s0 = (float)window_buf[n] +
                       goertzel_coeff[b] * s1 - s2;
            s2 = s1;
            s1 = s0;
        }
        bin_power[b] = s1*s1 + s2*s2 -
                       goertzel_coeff[b]*s1*s2;
        if (bin_power[b] < 0.0f)
            bin_power[b] = 0.0f;
    }
}

static void emit_band_features(void)
{
    u32 i;
    float theta = 0.0f, alpha = 0.0f, beta = 0.0f;
    float total;
    int p_theta, p_alpha, p_beta;
    const char *dominant;

    /* 4-7 Hz */
    for (i = 0; i <= 3; ++i) theta += bin_power[i];
    /* 8-12 Hz */
    for (i = 4; i <= 8; ++i) alpha += bin_power[i];
    /* 13-30 Hz */
    for (i = 9; i <= 26; ++i) beta += bin_power[i];

    total = theta + alpha + beta;
    if (total <= 0.0f) {
        xil_printf("P,0,0,0,NONE\r\n");
        return;
    }

    p_theta = (int)(100.0f * theta / total);
    p_alpha = (int)(100.0f * alpha / total);
    p_beta = 100 - p_theta - p_alpha;

    if (theta >= alpha && theta >= beta) dominant = "THETA";
    else if (alpha >= beta) dominant = "ALPHA";
    else dominant = "BETA";

    xil_printf("P,%d,%d,%d,%s\r\n",
               p_theta, p_alpha, p_beta, dominant);
}

static void print_tgam_if_updated(void)
{
    static u8 previous_seq = 0xFF;
    u32 status = BRAM_WORD(STATUS_ADDR);
    u8 seq = (u8)(status & 0xFFU);
    u32 bands[8];
    u32 i;

    if (seq == previous_seq)
        return;

    for (i = 0; i < 8; ++i)
        bands[i] = BRAM_WORD(BAND_BASE + i) & 0x00FFFFFFU;

    /* Avoid printing a mixed snapshot if the status word changed mid-read. */
    if (BRAM_WORD(STATUS_ADDR) != status)
        return;

    previous_seq = seq;
    xil_printf("E,%u,%u,%u,%u",
               (unsigned)((status >> 24) & 0xFFU),
               (unsigned)((status >> 16) & 0xFFU),
               (unsigned)((status >> 8) & 0xFFU),
               (unsigned)seq);

    for (i = 0; i < 8; ++i)
        xil_printf(",%lu", (unsigned long)bands[i]);
    xil_printf("\r\n");
}

int main(void)
{
    u16 producer;
    u16 available;

    xil_printf("\r\nEEG PL-PS BRAM reader started\r\n");
    xil_printf("BRAM base: 0x%08lx\r\n",
               (unsigned long)EEG_BRAM_BASE);
    xil_printf("FS assumption=%d Hz, NWIN=%d, NHOP=%d\r\n",
               (int)FS_HZ, (int)NWIN, (int)NHOP);

    /* Ignore old samples; begin at the current producer position. */
    read_seq = read_producer_seq();

    while (1) {
        producer = read_producer_seq();
        available = (u16)(producer - read_seq);

        if (available > RING_SIZE) {
            xil_printf("#WARN,ring_overrun,%u\r\n",
                       (unsigned)available);
            read_seq = (u16)(producer - RING_SIZE);
            available = RING_SIZE;
        }

        while (available > 0U) {
            u32 ring_index = (u32)(read_seq & RING_MASK);
            u32 word_addr = RAW_BASE + ring_index;
            u32 raw_word = BRAM_WORD(word_addr);
            s16 sample = (s16)(raw_word & 0xFFFFU);

            append_sample(sample);
            ++read_seq;
            --available;
            ++hop_count;

            if (window_count == NWIN && hop_count >= NHOP) {
                hop_count = 0;
                run_goertzel();
                emit_band_features();
            }
        }

        print_tgam_if_updated();
    }

    /* Not reached */
    /* return 0; */
}
