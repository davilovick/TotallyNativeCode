cmake_minimum_required(VERSION 3.13)

project(Calculator)

set(CMAKE_CXX_STANDARD 14)

add_library(Calculator SHARED 
	main.h
	main.cpp)

target_link_libraries(
	Calculator
	)