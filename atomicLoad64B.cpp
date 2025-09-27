#include <arm_acle.h>

int main()
{
    volatile double data[] = {0.,0.,0.,0.,0.,0.,0.,0.,}; // 64 bytes
    __arm_ld64b((const void*)data);
}