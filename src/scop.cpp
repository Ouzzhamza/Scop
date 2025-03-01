#include <iostream>
#include <GLFW/glfw3.h>



int main () {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow* window = glfwCreateWindow(800, 800, "openGl", NULL, NULL);

    if(!window) {
        std::cout << "Error creatin a window" << std::endl;
        glfwTerminate();
        return(-1);
    }
    return 0;
}