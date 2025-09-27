#include <arm_neon.h>

int main()
{
    uint8x16_t a;
    int8x16_t b;
    int32x4_t r, result;
    result = vusdotq_s32(r, a, b);
    return 0;
}