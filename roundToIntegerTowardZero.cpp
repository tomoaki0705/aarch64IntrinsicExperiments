
#include <iostream>
#include <arm_acle.h>

int main() 
{
	double a = 0.;
	volatile auto x = __rint32z(a);
	return 0;
}
