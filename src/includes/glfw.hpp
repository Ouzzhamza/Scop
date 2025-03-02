#ifndef GLFW_HPP
#define GLFW_HPP
#include "headers.hpp"

void init_glfw();
GLFWwindow* create_window(int width, int height, const char* title);
void viewport(int width, int height);
void framebuffer_size_callback(GLFWwindow *window, int width, int heigth);



#endif