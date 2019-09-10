project(directory_test)
cmake_minimum_required(VERSION 3.15)

#Bring the headers, such as Student.h into the project
include_directories(include)

set( CMAKE_EXPORT_COMPILE_COMMANDS ON )

#However, the file(GLOB...) allows for wildcard additions:
file(GLOB_RECURSE SOURCES "src/*.cpp")

add_executable(project ${SOURCES})
