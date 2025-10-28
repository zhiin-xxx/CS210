cmake_minimum_required(VERSION 3.10)

project(RISCVSimulator)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE RelWithDebInfo)
endif()

option(DEBUG "Enable debug output" OFF)

#if(DEBUG)
#    add_compile_definitions(DEBUG)
#endif()

# 创建可执行文件
add_executable(
    simulator
    src/main.cc
    src/memory.cc
    src/cache.cc
    src/memory_manager.cc
    src/simulator.cc
    src/five_stage_simulator.cc
    src/riscv.cc
)

# 包含第三方头文件
target_include_directories(simulator
    PRIVATE ${CMAKE_SOURCE_DIR}/third-party
)

# 编译选项
target_compile_options(simulator PRIVATE -Wall -Wextra -pedantic)

# 链接 fmt 库
find_package(fmt REQUIRED)
target_link_libraries(simulator PRIVATE fmt::fmt)
