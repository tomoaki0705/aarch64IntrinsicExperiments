#include <iostream>
#include <arm_neon.h>

int main() 
{
	float32x4_t r = vdupq_n_f32(0);
	float16x8_t a = vdupq_n_f16(0);
	float16x8_t b = vdupq_n_f16(0);
	volatile auto x = vfmlalq_low_f16(r, a, b);
	return 0;
}
