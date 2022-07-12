cmake_minimum_required(VERSION 3.5)
set(optimize "-O0")
project(armExtentions CXX)

macro(check_compiler_option FLAG SRC RESULT)
if(NOT DEFINED ${RESULT})
  try_compile(${RESULT}
      "${CMAKE_BINARY_DIR}"
      "${SRC}"
      COMPILE_DEFINITIONS "${FLAG}"
      OUTPUT_VARIABLE OUTPUT)
   message(STATUS "FLAG    ${FLAG}")
   message(STATUS "RESULT  ${${RESULT}}")
   message(STATUS "OUTPUT  ${OUTPUT_VARIABLE}")
endif()
endmacro()

macro(check_and_add target flag source)
  check_compiler_option(${flag} ${CMAKE_SOURCE_DIR}/${source} RESULT)
  if(${RESULT})
    add_executable(${target} ${source} ${ARGN})
    message(STATUS "target     ${target} ${${target}}")
    message(STATUS "flag       ${flag}")
    message(STATUS "optimize   ${optimize} ${${optimize}}")
    target_compile_options(${target} PUBLIC ${flag})
    target_compile_options(${target} PUBLIC -O0)
  endif()
endmacro()

#complexNumbers.cpp
#cryptoCRC32.cpp
#cryptoSHA3.cpp
#cryptoSM3.cpp
#cryptoSM4.cpp
#dotProduct.cpp
#FMALongHalf.cpp
#halfFloatOperation.cpp
#javascriptConvertToSignedTowardZero.cpp
#randomNumberGenerator.cpp
#roundingTowardZero.cpp
#roundToIntegerTowardZero.cpp
#TARGETS=complexNumber_v83 dotProduct_v82_dotprod cryptoSM4_v82_sm4 cryptoSHA3_v82_sha3 fmaLongFP16_v82_fp16fml roundingTZ_v85 javascrptConverToSignedTowardZero_v83_jscvt roundToIntegerTowardZero_v85 randomNumberGenerator_rng cryptoCRC halfFloatOperation_v82_fp16

#check_compiler_option("-march=armv8-a+crc"       HAVE_ARMV8_A_CRC)
#check_compiler_option("-march=armv8.2-a+fp16"    HAVE_ARMV8_2_A_FP16)
#check_compiler_option("-march=armv8.2-a+fp16fml" HAVE_ARMV8_2_A_FP16FML)
#check_compiler_option("-march=armv8.2-a+dotprod" HAVE_ARMV8_2_A_DOTPROD)
#check_compiler_option("-march=armv8.2-a+sha3"    HAVE_ARMV8_2_A_SHA3)
#check_compiler_option("-march=armv8.2-a+sm4"     HAVE_ARMV8_2_A_SM4)
#check_compiler_option("-march=armv8.3-a"         HAVE_ARMV8_3_A)
#check_compiler_option("-march=armv8.5-a"         HAVE_ARMV8_5_A)
#check_compiler_option("-march=armv8.5-a+rng"     HAVE_ARMV8_5_A_RNG)
#message(STATUS "HAVE_ARMV8_A_CRC       ${HAVE_ARMV8_A_CRC}")
#message(STATUS "HAVE_ARMV8_2_A_FP16    ${HAVE_ARMV8_2_A_FP16}")
#message(STATUS "HAVE_ARMV8_2_A_FP16FML ${HAVE_ARMV8_2_A_FP16FML}")
#message(STATUS "HAVE_ARMV8_2_A_DOTPROD ${HAVE_ARMV8_2_A_DOTPROD}")
#message(STATUS "HAVE_ARMV8_2_A_SHA3    ${HAVE_ARMV8_2_A_SHA3}")
#message(STATUS "HAVE_ARMV8_2_A_SM4     ${HAVE_ARMV8_2_A_SM4}")
#message(STATUS "HAVE_ARMV8_3_A         ${HAVE_ARMV8_3_A}")
#message(STATUS "HAVE_ARMV8_5_A         ${HAVE_ARMV8_5_A}")
#message(STATUS "HAVE_ARMV8_5_A_RNG     ${HAVE_ARMV8_5_A_RNG}")



check_and_add(complexNumber_v83 -march=armv8.3-a complexNumbers.cpp)
#
#
#complexNumber_v83:
#	$(CC) $(OPTIMIZE) -o $@  $<
#
#dotProduct_v82_dotprod: dotProduct.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+dotprod $<
#
#cryptoSM4_v82_sm4: cryptoSM4.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+sm4 $<
#
#cryptoSHA3_v82_sha3: cryptoSHA3.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+sha3 $<
#
#fmaLongFP16_v82_fp16fml: FMALongHalf.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+fp16fml $<
#
#roundingTZ_v85: roundingTowardZero.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a $<
#
## Non-NEON ACLE intrinsics
#
#javascrptConverToSignedTowardZero_v83_jscvt: javascriptConvertToSignedTowardZero.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.3-a $<
#
#roundToIntegerTowardZero_v85: roundToIntegerTowardZero.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a $<
#
#randomNumberGenerator_rng: randomNumberGenerator.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.5-a+rng $<
#
#cryptoCRC: cryptoCRC32.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8-a+crc $<
#
#halfFloatOperation_v82_fp16: halfFloatOperation.cpp
#	$(CC) $(OPTIMIZE) -o $@ -march=armv8.2-a+fp16 $<
