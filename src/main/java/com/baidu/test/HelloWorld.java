public class HelloWorld{

    static {
        // todo linux下使用libHelloJni.so
        System.load("/Users/v_guojinlong/CLionProjects/test_jni/src/main/jni/libs/libHelloJni.dylib");

    }

    public static void main(String args []){

        HelloWorld helloWord = new HelloWorld();
        helloWord.sayHello("hello");

    }

    public  native void sayHello(String name);

}