
#include "xil_printf.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "sleep.h"
#include "xparameters.h"
#include "stdint.h"

#define BRAM_BASE       XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR

#define RAW_START       256U
#define RAW_END         1279U
#define PRODUCER_ADDR   1280U
#define BAND_START      1281U
#define STATUS_ADDR     1289U

// Word index -> byte address
#define BRAM_ADDR(index) (BRAM_BASE + ((index) * 4U))

static uint32_t bram_read(uint32_t word_index)
{
    uint32_t addr = BRAM_ADDR(word_index);

    Xil_DCacheInvalidateRange(addr, 4);

    return Xil_In32(addr);
}

int main(void)
{
    uint32_t producer;
    uint32_t status;
    uint32_t raw;
    uint32_t raw_nonzero;
    uint32_t raw_changed;
    uint32_t previous_raw[8];
    uint32_t current_raw[8];

    xil_printf("\r\n");
    xil_printf("===== BRAM EEG SIGNAL TEST =====\r\n");

    xil_printf("BRAM BASE = 0x%08X\r\n", BRAM_BASE);

    // Read initial samples
    for (int i = 0; i < 8; i++)
    {
        previous_raw[i] = bram_read(RAW_START + i);
    }

    while (1)
    {
        xil_printf("\r\n-----------------------------\r\n");

        // 1. Producer
        producer = bram_read(PRODUCER_ADDR);

        xil_printf("Producer = %lu\r\n",
                   (unsigned long)producer);

        // 2. Status
        status = bram_read(STATUS_ADDR);

        xil_printf("Status = 0x%08X\r\n", status);

        // 3. Read selected Raw EEG samples
        raw_nonzero = 0;
        raw_changed = 0;

        for (int i = 0; i < 8; i++)
        {
            current_raw[i] = bram_read(RAW_START + i);

            if (current_raw[i] != 0)
                raw_nonzero++;

            if (current_raw[i] != previous_raw[i])
                raw_changed++;

            previous_raw[i] = current_raw[i];
        }

        xil_printf("Raw nonzero count = %lu / 8\r\n",
                   (unsigned long)raw_nonzero);

        xil_printf("Raw changed count = %lu / 8\r\n",
                   (unsigned long)raw_changed);

        for (int i = 0; i < 8; i++)
        {
            xil_printf("Raw[%lu] = 0x%08X (%ld)\r\n",
                       (unsigned long)(RAW_START + i),
                       current_raw[i],
                       (long)(int32_t)current_raw[i]);
        }

        // 4. Read all eight EEG bands
        xil_printf("EEG Bands:\r\n");

        for (int i = 0; i < 8; i++)
        {
            raw = bram_read(BAND_START + i);

            xil_printf("Band[%d] = 0x%08X\r\n", i, raw);
        }

        xil_printf("-----------------------------\r\n");

        sleep(1);
    }

    return 0;
}
