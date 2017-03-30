Swift 3 and OpenGL on macOS with GLFW
=====================================

![platforms](https://img.shields.io/badge/platforms-macOS-333333.svg)

## Requirements

* Xcode 8.2
* Swift 3.0

## Installation

Install Apple’s Command Line Tools:
```bash
xcode-select --install
```
Install the [Homebrew](https://brew.sh) package manager
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
If you have it already, make sure you have the last update/upgrade
```bash
brew update
brew upgrade
```
Install GLFW
```bash
brew install --static glfw
```
Open GLFW.xcodeproj and hit run.

Source
------
Thank you very much to [Solarian Programmer](https://solarianprogrammer.com) for the excellent [Swift 3 and OpenGL on Linux and macOS with GLFW](https://www.solarianprogrammer.com/2016/11/19/swift-opengl-linux-macos-glfw/) tutorial