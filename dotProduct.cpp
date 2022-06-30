#include <iostream>
#include <arm_neon.h>

int main() 
{
	uint32x4_t r = vdupq_n_u32(0);
	uint8x16_t a = vdupq_n_u8(0);
	uint8x16_t b = vdupq_n_u8(0);
	volatile auto x = vdotq_u32(r, a, b);
	return 0;
}
