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
endif()
endmacro()

macro(check_and_add target flag source)
  check_compiler_option(${flag} ${CMAKE_SOURCE_DIR}/${source} RESULT)
  if(${RESULT})
    add_executable(${target} ${source} ${ARGN})
    target_compile_options(${target} PUBLIC ${flag})
    target_compile_options(${target} PUBLIC -O0)
    message(STATUS "Added ${source} to be built")
  else()
    message(STATUS "Failed to build ${source}")
  endif()
endmacro()

check_and_add(complexNumber_v83            -march=armv8.3-a         complexNumbers.cpp)
check_and_add(cryptoCRC                    -march=armv8-a+crc       cryptoCRC32.cpp)
check_and_add(dotProduct_v82_dotprod       -march=armv8.2-a+dotprod dotProduct.cpp)
check_and_add(cryptoSM4_v82_sm4            -march=armv8.2-a+sm4     cryptoSM4.cpp)
check_and_add(cryptoSHA3_v82_sha3          -march=armv8.2-a+sha3    cryptoSHA3.cpp)
check_and_add(fmaLongFP16_v82_fp16fml      -march=armv8.2-a+fp16fml FMALongHalf.cpp)
check_and_add(roundingTZ_v85               -march=armv8.5-a         roundingTowardZero.cpp)
check_and_add(javascrptConverToSignedTowardZero_v83_jscvt -march=armv8.3-a javascriptConvertToSignedTowardZero.cpp)
check_and_add(roundToIntegerTowardZero_v85 -march=armv8.5-a         roundToIntegerTowardZero.cpp)
check_and_add(randomNumberGenerator_rng    -march=armv8.5-a+rng     randomNumberGenerator.cpp)
check_and_add(halfFloatOperation_v82_fp16  -march=armv8.2-a+fp16    halfFloatOperation.cpp)
