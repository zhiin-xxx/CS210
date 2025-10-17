cmake_minimum_required(VERSION 3.10)

project(RISCVSimulator)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -pedantic")
set(CMAKE_CXX_FLAGS_DEBUG "-g -O0 -DDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG")

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE RelWithDebInfo)
endif()

add_executable(
    simulator
    src/main.cc
    src/memory.cc
    src/simulator.cc
    src/five_stage_simulator.cc
    src/riscv.cc
)

target_include_directories(simulator
    PRIVATE ${CMAKE_SOURCE_DIR}/third-party
)

