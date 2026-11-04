#include "xil_io.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "sleep.h"
#include <stdint.h>

#define CANDIDATE_ADDR 0x40000500U
#define EXPECTED_ADDR  0x40001400U

/* Read shared BRAM after invalidating its containing cache line. */
static uint32_t bram_read(uint32_t address)
{
    Xil_DCacheInvalidateRange((INTPTR)(address & ~0x1FU), 32);
    return Xil_In32(address);
}

int main(void)
{
    uint32_t previous_a, previous_b, a, b;
    uint32_t tick = 0U;
    uint16_t delta_a, delta_b;

    xil_printf("\r\n=== BRAM DUAL ADDRESS TEST ===\r\n");
    xil_printf("A candidate: 0x%08X\r\n", CANDIDATE_ADDR);
    xil_printf("B expected : 0x%08X\r\n", EXPECTED_ADDR);
    xil_printf("Print every 500 ms. Delta uses low 16 bits, modulo 65536.\r\n");
    xil_printf("Keep PL running without reset during this test.\r\n");

    previous_a = bram_read(CANDIDATE_ADDR);
    previous_b = bram_read(EXPECTED_ADDR);
    xil_printf("Initial A=%d (0x%08X), B=%d (0x%08X)\r\n",
               (int)(previous_a & 0xFFFFU), previous_a,
               (int)(previous_b & 0xFFFFU), previous_b);

    while (1)
    {
        usleep(500000);
        ++tick;
        a = bram_read(CANDIDATE_ADDR);
        b = bram_read(EXPECTED_ADDR);
        delta_a = (uint16_t)((uint16_t)a - (uint16_t)previous_a);
        delta_b = (uint16_t)((uint16_t)b - (uint16_t)previous_b);

        xil_printf("[HB %d] A@0x40000500=%d hex=0x%08X delta=%d | B@0x40001400=%d hex=0x%08X delta=%d\r\n",
                   (int)tick, (int)(a & 0xFFFFU), a, (int)delta_a,
                   (int)(b & 0xFFFFU), b, (int)delta_b);

        if (a == previous_a && b == previous_b)
            xil_printf("  NO_CHANGE: neither address changed since last read.\r\n");
        else if (a != previous_a && b == previous_b)
            xil_printf("  A_CHANGED_ONLY: supports address-unit mismatch; verify consecutive counts.\r\n");
        else if (a == previous_a && b != previous_b)
            xil_printf("  B_CHANGED_ONLY: expected address is active; inspect its counts.\r\n");
        else
            xil_printf("  BOTH_CHANGED: do not infer producer location from changes alone.\r\n");

        previous_a = a;
        previous_b = b;
    }
}
