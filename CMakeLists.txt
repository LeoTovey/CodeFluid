cmake_minimum_required(VERSION 3.23)
project(CodeFluid)

set(CMAKE_CXX_STANDARD 14)
include_directories(external/glm)
add_subdirectory(external/glm)
add_executable(CodeFluid main.cpp)
target_link_libraries(CodeFluid glm)

