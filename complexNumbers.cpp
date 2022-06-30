#include <iostream>
#include <arm_neon.h>

int main() 
{
	float32x2_t a = vdup_n_f32(0);
	float32x2_t b = vdup_n_f32(0);
	volatile auto x = vcadd_rot90_f32(a, b);
	return 0;
}
