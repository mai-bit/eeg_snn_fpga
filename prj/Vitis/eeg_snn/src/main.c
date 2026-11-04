#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "sleep.h"
#include <stdint.h>

/* BRAM 基地址 */
#define BRAM_BASE_ADDR       0x40000000U

/* SNN 结果和更新序号 */
#define SNN_RESULT_ADDR      (BRAM_BASE_ADDR + 1290U * 4U)
#define SNN_SEQUENCE_ADDR    (BRAM_BASE_ADDR + 1291U * 4U)

/*
 * 使 BRAM 对应 Cache Line 失效
 * Cache Line 按 32 字节对齐
 */
static void bram_cache_invalidate(uint32_t addr)
{
    uint32_t aligned_addr = addr & ~0x1FU;

    Xil_DCacheInvalidateRange((INTPTR)aligned_addr, 32);
}

/* 读取 BRAM 中的 32 位数据 */
static uint32_t bram_read(uint32_t addr)
{
    bram_cache_invalidate(addr);
    return Xil_In32(addr);
}

/* 将分类编号转换为文字 */
static const char *get_class_name(uint32_t result)
{
    switch (result)
    {
        case 0:
            return "Class 0";

        case 1:
            return "Class 1";

        case 2:
            return "Class 2";

        case 3:
            return "Class 3";

        default:
            return "Unknown Class";
    }
}

int main(void)
{
    uint32_t last_sequence = 0;
    uint32_t sequence_before;
    uint32_t sequence_after;
    uint32_t snn_result;

    xil_printf("\r\n");
    xil_printf("================================\r\n");
    xil_printf("       EEG SNN CLASSIFICATION   \r\n");
    xil_printf("================================\r\n");

    xil_printf("BRAM Base   : 0x%08X\r\n", BRAM_BASE_ADDR);
    xil_printf("SNN Result  : 0x%08X\r\n", SNN_RESULT_ADDR);
    xil_printf("SNN Sequence: 0x%08X\r\n", SNN_SEQUENCE_ADDR);

    xil_printf("Waiting for PL SNN result...\r\n\r\n");

    while (1)
    {
        /* 读取 PL 写入的结果更新序号 */
        sequence_before = bram_read(SNN_SEQUENCE_ADDR);

        /* 没有新结果就继续等待 */
        if (sequence_before == last_sequence)
        {
            usleep(10000);
            continue;
        }

        /* 读取 PL 写入的 SNN 分类结果 */
        snn_result = bram_read(SNN_RESULT_ADDR);

        /* 再次读取序号，确认读取过程中结果没有更新 */
        sequence_after = bram_read(SNN_SEQUENCE_ADDR);

        if (sequence_before != sequence_after)
        {
            continue;
        }

        last_sequence = sequence_after;

        xil_printf("========== NEW SNN RESULT ==========\r\n");

        xil_printf("Sequence    : %d\r\n", last_sequence);
        xil_printf("Class ID    : %d\r\n", snn_result);
        xil_printf("Classification: %s\r\n",
                   get_class_name(snn_result));

        xil_printf("====================================\r\n\r\n");
    }

    return 0;
}
