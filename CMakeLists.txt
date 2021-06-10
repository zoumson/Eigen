cmake_minimum_required(VERSION 2.8.9)

#set the project name
project (eigen)

#Set the compiler
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE Release)
set( EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)


#Set ccache (for speeding up)
find_program(CCACHE_FOUND ccache) 
if(CCACHE_FOUND) 
    set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache) 
    set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache) 
endif(CCACHE_FOUND) 
set (CMAKE_CXX_FLAGS "-DPCL_ONLY_CORE_POINT_TYPES=ON -DNO_EXPLICIT_INSTANTIATIONS") 

############### Dependencies #######################

find_package( Pangolin )
include_directories( ${Pangolin_INCLUDE_DIRS} )
SET(Boost_USE_STATIC_LIBS ON)
find_package(Boost COMPONENTS program_options log log_setup REQUIRED)

############### My Files #########################

#Bring the headers
include_directories(${PROJECT_SOURCE_DIR}/include)

#Bring the source files
add_executable( visualizeGeometry ${PROJECT_SOURCE_DIR}/src/visualizeGeometry.cpp )
target_link_libraries( visualizeGeometry ${Pangolin_LIBRARIES} )

add_executable( eigenGeometry ${PROJECT_SOURCE_DIR}/src/eigenGeometry.cpp )
add_executable( eigenMatrix  ${PROJECT_SOURCE_DIR}/src/eigenMatrix.cpp )

target_link_libraries(eigenMatrix Boost::program_options Boost::log Boost::log_setup)



