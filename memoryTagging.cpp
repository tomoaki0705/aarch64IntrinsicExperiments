#include <arm_acle.h>

int main()
{
    volatile float data;
    uint64_t tag = 1;
    volatile float* new_tag = __arm_mte_create_random_tag(&data, tag);
    return 0;
}