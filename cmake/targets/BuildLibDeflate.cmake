register_repository(
  NAME
    libdeflate
  REPOSITORY
    ebiggers/libdeflate
  COMMIT
    75390569905da2f4aa03c5bc03e03c9d18b9b2d0
)

register_cmake_command(
  TARGET
    libdeflate
  TARGETS
    libdeflate_static
  ARGS
    -DLIBDEFLATE_BUILD_STATIC_LIB=ON
    -DLIBDEFLATE_BUILD_SHARED_LIB=OFF
    -DLIBDEFLATE_BUILD_GZIP=OFF
  LIBRARIES
    deflatestatic WIN32
    deflate UNIX
  INCLUDES
    .
)
