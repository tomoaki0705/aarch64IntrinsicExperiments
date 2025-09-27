#include <arm_neon.h>

int main()
{
    int16x8_t a, b, c;
    int16x8_t result = vqrdmlahq_s16(a, b, c); // a+b*c*2
    return 0;
}