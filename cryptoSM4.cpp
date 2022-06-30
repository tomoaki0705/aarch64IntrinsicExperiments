#include <iostream>
#include <arm_neon.h>

int main() 
{
	uint32x4_t a = vdupq_n_u32(0);
	uint32x4_t b = vdupq_n_u32(0);
	uint32x4_t c = vdupq_n_u32(0);
	volatile auto x = vsm3ss1q_u32(a, b, c);
	return 0;
}
