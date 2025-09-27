#include <arm_bf16.h>

int main()
{
    float pi = 3.141592f;
    bfloat16_t bf16_data = vcvth_bf16_f32(pi);
    float result = vcvtah_f32_bf16(bf16_data);
    return 0;
}