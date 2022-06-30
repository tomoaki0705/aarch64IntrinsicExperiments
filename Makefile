CC=g++
OPTIMIZE=-O0

all: complexNumber_v83 dotProduct_v82_dotprod cryptoSM4_v82_sm4 cryptoSHA3_v82_sha3 fmaLongFP16_v82_fp16fml roundingTZ_v85

complexNumber_v83:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.3-a complexNumbers.cpp

dotProduct_v82_dotprod:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+dotprod dotProduct.cpp

cryptoSM4_v82_sm4:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+sm4 cryptoSM4.cpp

cryptoSHA3_v82_sha3:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+sha3 cryptoSHA3.cpp

fmaLongFP16_v82_fp16fml:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+fp16fml FMALongHalf.cpp

roundingTZ_v85:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a roundingTowardZero.cpp
