cmake_minimum_required(VERSION 3.15)

project(
  vulkan-playground
  VERSION 1.0.0
  DESCRIPTION "playground for vulkan api and cmake"
  LANGUAGES CXX)

include(FetchContent)
include("${PROJECT_SOURCE_DIR}/cmake/glfw.cmake")
include("${PROJECT_SOURCE_DIR}/cmake/glm.cmake")
include("${PROJECT_SOURCE_DIR}/cmake/vulkan.cmake")

set(SOURCE_FILES src/main.cpp)
set(TEST_FILES)
 
add_executable(vulkan-tutorial ${SOURCE_FILES} ${TEST_FILES})

set_property(TARGET vulkan-tutorial PROPERTY CXX_STANDARD 17)

message("Build Flags: ${CMAKE_CXX_FLAGS}")
message("Build Flags (DEBUG): ${CMAKE_CXX_FLAGS_DEBUG}")
message("Build Flags (RELEASE): ${CMAKE_CXX_FLAGS_RELEASE}")
string(TOUPPER ${CMAKE_BUILD_TYPE} CURRENT_BUILD_TYPE_STRING)
message("Current Build Flags (${CMAKE_BUILD_TYPE}): ${CMAKE_CXX_FLAGS_${CURRENT_BUILD_TYPE_STRING}}")

target_link_libraries(
  vulkan-tutorial
  PRIVATE glfw
  PRIVATE Vulkan::Vulkan
  PRIVATE glm)

set(SHADER_DIR ${PROJECT_BINARY_DIR}/${CMAKE_BUILD_TYPE}/shaders)
make_directory(${SHADER_DIR})
