CC=g++
OPTIMIZE=-O0

TARGETS=complexNumber_v83 dotProduct_v82_dotprod cryptoSM4_v82_sm4 cryptoSHA3_v82_sha3 fmaLongFP16_v82_fp16fml roundingTZ_v85 javascrptConverToSignedTowardZero_v83_jscvt roundToIntegerTowardZero_v85 randomNumberGenerator_rng cryptoCRC halfFloatOperation_v82_fp16

all: $(TARGETS)

.PHONY: clean
clean:
	rm -f  $(TARGETS)

complexNumber_v83: complexNumbers.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.3-a $<

dotProduct_v82_dotprod: dotProduct.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+dotprod $<

cryptoSM4_v82_sm4: cryptoSM4.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+sm4 $<

cryptoSHA3_v82_sha3: cryptoSHA3.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+sha3 $<

fmaLongFP16_v82_fp16fml: FMALongHalf.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+fp16fml $<

roundingTZ_v85: roundingTowardZero.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a $<

# Non-NEON ACLE intrinsics

javascrptConverToSignedTowardZero_v83_jscvt: javascriptConvertToSignedTowardZero.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.3-a $<

roundToIntegerTowardZero_v85: roundToIntegerTowardZero.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a $<

randomNumberGenerator_rng: randomNumberGenerator.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a+rng $<

cryptoCRC: cryptoCRC32.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8-a+crc $<

halfFloatOperation_v82_fp16: halfFloatOperation.cpp
	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+fp16 $<
