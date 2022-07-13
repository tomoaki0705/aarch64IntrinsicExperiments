
#include <iostream>

int main() 
{
	__fp16 a = 0.;
	__fp16 b = 0.;
	volatile __fp16 y = a+b;
	return 0;
}
