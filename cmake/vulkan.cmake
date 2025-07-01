find_package(Vulkan REQUIRED COMPONENTS glslc)
find_program(glslc_executable NAME glslc HINTS Vulkan::glslc)

function(compile_shader target)
    message("COMPILING SHADERS")
    
endfunction()
