#include <arm_neon.h>

int main()
{
    uint8x16_t a, b, result;
    result = vaeseq_u8(a, b);
    return 0;
}