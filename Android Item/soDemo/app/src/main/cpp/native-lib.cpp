#include <jni.h>
#include <string>

extern "C" JNIEXPORT jint JNICALL
Java_com_example_sodemo_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
        return 42;
}

//JNIEXPORT jint JNICALL
//Java_com_example_socdemo_MainActivity_getIntValue(
//        JNIEnv *env,
//        jobject obj) {
//    // 返回一个整数值
//    return 42; // 例如，返回数字42
//}