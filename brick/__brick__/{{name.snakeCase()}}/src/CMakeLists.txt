# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project({{name.snakeCase()}}_library VERSION 0.0.1 LANGUAGES C)

add_library({{name.snakeCase()}} SHARED
  "{{name.snakeCase()}}.c"
)

set_target_properties({{name.snakeCase()}} PROPERTIES
  PUBLIC_HEADER {{name.snakeCase()}}.h
  OUTPUT_NAME "{{name.snakeCase()}}"
)

target_compile_definitions({{name.snakeCase()}} PUBLIC DART_SHARED_LIB)
