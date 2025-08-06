#include <jni.h>
#include <string>
extern "C" JNIEXPORT jstring JNICALL
Java_com_example_socdemo_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}

JNIEXPORT jint JNICALL
Java_com_example_socdemo_MainActivity_getIntValue(
        JNIEnv *env,
        jobject obj) {
    // 返回一个整数值
    return 42; // 例如，返回数字42
}