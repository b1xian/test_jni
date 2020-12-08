cmake_minimum_required(VERSION 3.14)
project(test_jni)

set(CMAKE_CXX_STANDARD 14)

set(JNI_NAME HelloJni)

set(SRC_CPP_PATH src/main/jni)
add_library(${JNI_NAME} SHARED ${SRC_CPP_PATH}/cpp/HelloWorld.cpp)
target_compile_options(${JNI_NAME} PUBLIC -std=c++14 -O3 -frtti -fexceptions)
target_include_directories(${JNI_NAME} PUBLIC ${SRC_CPP_PATH}/include)