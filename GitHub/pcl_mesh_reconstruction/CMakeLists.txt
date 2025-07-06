cmake_minimum_required(VERSION 3.5)
project(PCL_Mesh_Reconstruction)

find_package(PCL 1.8 REQUIRED)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

# GreedyProjectionTriangulation
add_executable(mesh_reconstruction_greedy mesh_reconstruction_greedy.cpp)
target_link_libraries(mesh_reconstruction_greedy ${PCL_LIBRARIES})

add_executable(mesh_reconstruction_greedyColor mesh_reconstruction_greedyColor.cpp)
target_link_libraries(mesh_reconstruction_greedyColor ${PCL_LIBRARIES})

# Poisson
add_executable(mesh_reconstruction_poisson mesh_reconstruction_poisson.cpp)
target_link_libraries(mesh_reconstruction_poisson ${PCL_LIBRARIES})

add_executable(mesh_reconstruction_poissonColor mesh_reconstruction_poissonColor.cpp)
target_link_libraries(mesh_reconstruction_poissonColor ${PCL_LIBRARIES})

add_executable(mesh_reconstruction_poissonTexture mesh_reconstruction_poissonTexture.cpp)
target_link_libraries(mesh_reconstruction_poissonTexture ${PCL_LIBRARIES})