#include "HelloWorld.h"

#include <iostream>
#include <string>

JNIEXPORT void JNICALL Java_HelloWorld_sayHello (JNIEnv* env, jobject jo, jstring str) {
    const char* jstr = env->GetStringUTFChars(str, 0);

    printf("%s jni\n", jstr);
}