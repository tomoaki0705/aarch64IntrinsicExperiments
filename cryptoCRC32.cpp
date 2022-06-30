#include <iostream>
#include <arm_acle.h>

int main() 
{
	uint a;
	unsigned char b;
	volatile auto x = __crc32b(a, b);
	return 0;
}
