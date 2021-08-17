cmake_minimum_required(VERSION 3.1.0)

project(icolearning VERSION 1.0.0 LANGUAGES CXX)

set (CMAKE_CXX_STANDARD 11)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
	set(CMAKE_BUILD_TYPE "RelWithDebInfo")
endif()

include(GNUInstallDirs)

cmake_policy(SET CMP0048 NEW) # set VERSION in project()
cmake_policy(SET CMP0042 NEW) # enable MACOSX_RPATH by default

if (MSVC)
  add_compile_options(/W4)
else()
  add_compile_options(-Wall -Wconversion -Wextra -pedantic)
endif()

set(LIBSRC
  icolearning.cpp
  trace.cpp
)

set(LIBINCLUDE
  icolearning.h
  trace.h
  )

add_library(icolearning
  STATIC
  ${LIBSRC}
  )

set_target_properties(icolearning PROPERTIES
  VERSION ${PROJECT_VERSION}
  PUBLIC_HEADER "${LIBINCLUDE}")

install(TARGETS icolearning EXPORT icolearning-targets
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
  PRIVATE_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

install(EXPORT icolearning-targets
  DESTINATION lib/cmake/icolearning
  FILE icolearning-config.cmake
)

add_executable (demo demo.cpp)
target_link_libraries(demo icolearning)
