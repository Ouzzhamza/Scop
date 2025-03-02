#include <iostream>
#include "includes/glad/glad.h"
#include <GLFW/glfw3.h>
#include "includes/glfw.hpp"
#include "includes/render.hpp"

int main () {

    init_glfw();
    GLFWwindow* window = create_window(800, 800, "openGl");
    render(window);
    return 0;
}