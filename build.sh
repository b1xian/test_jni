#!/usr/bin/env bash

java_path=src/main/java/com/baidu/test
jni_path=src/main/jni

# 1. 生成native头文件
cd ${java_path}
javac HelloWorld.java
javah HelloWorld
cd ../../../../../../

cp ${java_path}/HelloWorld.h ${jni_path}/include

# 2. 编写头文件实现 HelloWorld.cpp, 略

# 3. 编译native library
mkdir build
cd build
cmake ..
make
cd ..
# linux下使用libHelloJni.so
cp build/libHelloJni.dylib ${jni_path}/libs

# 4. 执行java程序
cd src/main/java/com/baidu/test
java HelloWorld




