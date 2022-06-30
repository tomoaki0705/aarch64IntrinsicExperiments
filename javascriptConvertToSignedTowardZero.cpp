#include <iostream>
#include <arm_acle.h>

int main() 
{
	double a = 0.;
	volatile auto x = __jcvt(a);
	return 0;
}
