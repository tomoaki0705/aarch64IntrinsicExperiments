#include <iostream>
#include <arm_acle.h>

int main() 
{
	uint64_t a = 0;
	volatile auto x = __rndr(&a);
	return 0;
}
