#include <iostream>
#include <atomic>

int aincr(std::atomic<int> *value)
{
	(*value)++;
	return *value;
}

int main() 
{
	std::atomic<int> x;
	x++;
	return 0;
}
