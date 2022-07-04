
#include <iostream>
#include <arm_fp16.h>

int main() 
{
	float16_t a = 0.;
	float16_t b = 0.;
	volatile auto x = vabsh_f16(a);
	volatile float16_t y = a+b;
	return 0;
}
