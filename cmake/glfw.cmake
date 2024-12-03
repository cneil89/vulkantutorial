set(GLFW_BUILD_DOCS FALSE)
set(GLFW_BUILD_EXAMPLES FALSE)
set(GLFW_BUILD_TESTS FALSE)
set(GLFW_INSTALL FALSE)
set(GLFW_BUILD_WAYLAND TRUE)
set(USE_MSVC_RUNTIME_LIBRARY_DLL FALSE)

FetchContent_Declare(
  glfw
  GIT_REPOSITORY https://github.com/glfw/glfw.git
  GIT_TAG 3.4)

FetchContent_MakeAvailable(glfw)
