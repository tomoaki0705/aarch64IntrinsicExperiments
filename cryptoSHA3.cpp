#include <iostream>
#include <arm_neon.h>

int main() 
{
	uint64x2_t a = vdupq_n_u64(0);
	uint64x2_t b = vdupq_n_u64(0);
	uint64x2_t c = vdupq_n_u64(0);
	volatile auto x = vsha512hq_u64(a, b, c);
	return 0;
}
