cmake_minimum_required (VERSION 2.6) 
project (gwYAML) 

include(../cmake/macros.cmake)

set_property(GLOBAL PROPERTY USE_FOLDERS On)

MACRO(SUBDIRLIST result curdir)
  FILE(GLOB children RELATIVE ${curdir} ${curdir}/*)
  SET(dirlist "")
  FOREACH(child ${children})
    IF(IS_DIRECTORY ${curdir}/${child})
        SET(dirlist ${dirlist} ${child})
    ENDIF()
  ENDFOREACH()
  SET(${result} ${dirlist})
ENDMACRO()

file(GLOB_RECURSE INCS "*.h")
file(GLOB_RECURSE CPPS "*.cpp")

add_executable(gwYAMLTest ${CPPS} ${INCS})

set(COPY_TARGET_DIR $<TARGET_FILE_DIR:gwYAMLTest>)
post_build_make_dir_link(gwYAMLTest ${PROJECT_SOURCE_DIR}/../test_files  ${COPY_TARGET_DIR}/test_files) 
if(MSVC) 
	post_build_make_dir_link(gwYAMLTest ${PROJECT_SOURCE_DIR}/../test_files  ${PROJECT_BINARY_DIR}/test_files) 
endif(MSVC) 
