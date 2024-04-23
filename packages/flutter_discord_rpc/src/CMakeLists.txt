# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_discord_rpc_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_discord_rpc SHARED
  "flutter_discord_rpc.c"
)

set_target_properties(flutter_discord_rpc PROPERTIES
  PUBLIC_HEADER flutter_discord_rpc.h
  OUTPUT_NAME "flutter_discord_rpc"
)

target_compile_definitions(flutter_discord_rpc PUBLIC DART_SHARED_LIB)
