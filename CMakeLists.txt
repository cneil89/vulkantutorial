cmake_minimum_required(VERSION 3.15)

project(
  vulkan-playground
  VERSION 1.0.0
  DESCRIPTION "playground for vulkan api and cmake"
  LANGUAGES CXX)

include(FetchContent)
include("${CMAKE_CURRENT_SOURCE_DIR}/cmake/glfw.cmake")
include("${CMAKE_CURRENT_SOURCE_DIR}/cmake/glm.cmake")
include("${CMAKE_CURRENT_SOURCE_DIR}/cmake/vulkan.cmake")

set(SOURCE_FILES src/main.cpp)
set(TEST_FILES)

add_executable(${PROJECT_NAME} ${SOURCE_FILES} ${TEST_FILES})

target_link_libraries(${PROJECT_NAME} glfw ${GLFW_LIBRARIES} Vulkan::Vulkan glm)
