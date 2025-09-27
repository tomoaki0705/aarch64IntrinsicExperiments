#include <arm_neon.h>

int main()
{
    float32x4_t r, result;
    bfloat16x8_t a, b;
    result = vbfdotq_f32(r, a, b);
    return 0;
}