
#include <iostream>
#include <arm_fp16.h>

int main() 
{
	float16_t a = 0.;
	volatile auto x = vabsh_f16(a);
	return 0;
}
