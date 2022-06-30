#include <iostream>
#include <arm_neon.h>

int main() 
{
	float32x4_t a = vdupq_n_f32(0);
	volatile auto x = vrnd32zq_f32(a);
	return 0;
}
