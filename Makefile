CC=g++
OPTIMIZE=-O0

TARGETS=complexNumber_v83 dotProduct_v82_dotprod cryptoSM4_v82_sm4 cryptoSHA3_v82_sha3 fmaLongFP16_v82_fp16fml roundingTZ_v85 javascrptConverToSignedTowardZero_v83_jscvt roundToIntegerTowardZero_v85 randomNumberGenerator_rng cryptoCRC halfFloatOperation_v82_fp16

all: $(TARGETS)

.PHONY: clean
clean:
	rm -f  $(TARGETS)

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

# Non-NEON ACLE intrinsics

javascrptConverToSignedTowardZero_v83_jscvt:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.3-a javascriptConvertToSignedTowardZero.cpp

roundToIntegerTowardZero_v85:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a roundToIntegerTowardZero.cpp

randomNumberGenerator_rng:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a+rng randomNumberGenerator.cpp

cryptoCRC:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8-a+crc cryptoCRC32.cpp

halfFloatOperation_v82_fp16:
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+fp16 halfFloatOperation.cpp
