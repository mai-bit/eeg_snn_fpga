#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "sleep.h"
#include <stdint.h>

#define BRAM_BASE_ADDR  0x40000000U
#define RAW_START_WORD  256U
#define RAW_MASK        1023U
#define PRODUCER_ADDR   (BRAM_BASE_ADDR + 1280U * 4U)
#define STATUS_ADDR     (BRAM_BASE_ADDR + 1289U * 4U)

/* PL is the only writer of these locations. */
static uint32_t bram_read(uint32_t addr)
{
    Xil_DCacheInvalidateRange((INTPTR)(addr & ~0x1FU), 32);
    return Xil_In32(addr);
}

int main(void)
{
    uint16_t previous, sequence, after, delta;
    uint32_t heartbeat = 0U, quiet = 0U;
    uint32_t address, word = 0U, status;
    unsigned int attempt;
    int stable;
    int32_t raw;

    xil_printf("\r\n=== EEG BRAM LINK MONITOR ===\r\n");
    xil_printf("RAW producer address: 0x%08X\r\n", PRODUCER_ADDR);
    xil_printf("Heartbeat every 500 ms; no SNN result required.\r\n");
    xil_printf("delta counts new samples since last snapshot, not lost samples.\r\n");
    xil_printf("Restart this app if PL is reset; seq16 wraps at 65536.\r\n");
    previous = (uint16_t)bram_read(PRODUCER_ADDR);
    xil_printf("Initial producer=%d; waiting for fresh updates.\r\n", (int)previous);

    while (1)
    {
        usleep(500000);
        ++heartbeat;
        stable = 0;

        /* Read the newest committed sample, retry if producer changes.
         * This is a diagnostic snapshot, not a continuous data recorder. */
        for (attempt = 0U; attempt < 4U; ++attempt)
        {
            sequence = (uint16_t)bram_read(PRODUCER_ADDR);
            address = BRAM_BASE_ADDR +
                (RAW_START_WORD + (((uint32_t)sequence - 1U) & RAW_MASK)) * 4U;
            word = bram_read(address);
            after = (uint16_t)bram_read(PRODUCER_ADDR);
            if (sequence == after)
            {
                stable = 1;
                break;
            }
        }

        if (!stable)
        {
            xil_printf("[HB %d] SNAPSHOT_BUSY: producer changed during read; retry next tick.\r\n",
                       (int)heartbeat);
            continue;
        }

        delta = (uint16_t)(sequence - previous);
        previous = sequence;
        if (delta == 0U)
        {
            ++quiet;
            xil_printf("[HB %d] NO_NEW_RAW seq=%d quiet_ticks=%d (500 ms/tick)\r\n",
                       (int)heartbeat, (int)sequence, (int)quiet);
            continue;
        }

        quiet = 0U;
        raw = (int32_t)(word & 0xFFFFU);
        if ((word & 0x8000U) != 0U)
            raw -= 65536;
        status = bram_read(STATUS_ADDR);
        xil_printf("[HB %d] RAW_UPDATED seq=%d delta=%d latest_raw=%d addr=0x%08X\r\n",
                   (int)heartbeat, (int)sequence, (int)delta, (int)raw, address);
        xil_printf("  TGAM status=0x%08X quality=%d attention=%d meditation=%d status_seq=%d\r\n",
                   status, (int)((status >> 8) & 0xFFU),
                   (int)((status >> 24) & 0xFFU),
                   (int)((status >> 16) & 0xFFU), (int)(status & 0xFFU));
        if ((word >> 16) != ((word & 0x8000U) ? 0xFFFFU : 0U))
            xil_printf("  WARNING: RAW sign extension mismatch, word=0x%08X\r\n", word);
    }
}
