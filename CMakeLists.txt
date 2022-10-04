cmake_minimum_required(VERSION 3.20.2)
project(CodeFluid)

set(CMAKE_CXX_STANDARD 14)
include_directories(external/glm)

add_subdirectory(external/glm)

add_executable(CodeFluid main.cpp src/particle_system_data2.cpp src/particle_system_data2.h)

target_link_libraries(CodeFluid glm)

