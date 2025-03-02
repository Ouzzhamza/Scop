#include "includes/render.hpp"
#include "includes/keyPress.hpp"

void render(GLFWwindow* window) {
    while(!glfwWindowShouldClose(window)) {
        processInput(window);
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        glfwPollEvents();
        glfwSwapBuffers(window);
    }
}