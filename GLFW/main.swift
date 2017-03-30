//
//  main.swift
//  GLFW
//
//  Created by Valeriy Kliuk on 2017-03-29.
//  Copyright © 2017 Valeriy Kliuk. All rights reserved.
//

//https://www.solarianprogrammer.com/2016/11/19/swift-opengl-linux-macos-glfw/

import Foundation

#if os(OSX)
    import OpenGL
#endif

// Initialize GLFW
if(glfwInit() == 0) {
    print("Failed to initialize GLFW! I'm out!")
    exit(-1)
}


// Open a window and attach an OpenGL context to the window surface
guard let window = glfwCreateWindow(600, 600, "OpenGL test - Swift", nil, nil)
    else {
        print("Failed to open a window! I'm out!")
        glfwTerminate()
        exit(-1)
}

// Set the window context current
glfwMakeContextCurrent(window)

// Print the OpenGL version currently enabled on your machine
let version = String(cString: glGetString(UInt32(GL_VERSION)))
print(version)

// Use red to clear the screen
glClearColor(1, 0, 0, 1)

while (glfwWindowShouldClose(window) == 0) {
    // Clear the screen (window background)
    glClear(UInt32(GL_COLOR_BUFFER_BIT))
    
    // Draw a square using the (deprecated) fixed pipeline functionality
    glColor3f(1.0, 1.0, 0.0)
    glBegin(UInt32(GL_QUADS))
    glVertex2f(-0.5, -0.5)
    glVertex2f(0.5, -0.5)
    glVertex2f(0.5, 0.5)
    glVertex2f(-0.5, 0.5)
    glEnd()
    
    // Swap front and back buffers for the current window
    glfwSwapBuffers(window)
    
    // Poll for events
    glfwPollEvents()
}

// Destroy the window and its context
glfwDestroyWindow(window)

// Terminate GLFW
glfwTerminate()
