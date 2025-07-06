#include <pcl/io/ply_io.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/surface/gp3.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/features/normal_3d.h>
#include <iostream>
#include <ctime>
#include <sstream>
#include <iomanip>
#include <chrono>

int main(int argc, char** argv)
{
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <input.pcd> [output.ply]" << std::endl;
        return -1;
    }

    std::string input_pcd_file = argv[1];
    std::string output_ply_file;

    // 若有指定輸出檔案名稱就用，否則自動產生時間戳
    if (argc >= 3) {
        output_ply_file = argv[2];
    } else {
        auto now = std::chrono::system_clock::now();
        std::time_t now_time = std::chrono::system_clock::to_time_t(now);
        std::stringstream time_stream;
        time_stream << std::put_time(std::localtime(&now_time), "%Y%m%d_%H%M%S");
        output_ply_file = "mesh_output_greedyColor_" + time_stream.str() + ".ply";
    }

    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGB>);
    if (pcl::io::loadPCDFile(input_pcd_file, *cloud) == -1) {
        PCL_ERROR("Couldn't read the PCD file: %s\n", input_pcd_file.c_str());
        return -1;
    }

    pcl::PassThrough<pcl::PointXYZRGB> pass;
    pass.setInputCloud(cloud);
    pass.setFilterFieldName("z");
    pass.setFilterLimits(-15.0, 25.0);
    pass.filter(*cloud);

    pcl::VoxelGrid<pcl::PointXYZRGB> voxel;
    voxel.setInputCloud(cloud);
    voxel.setLeafSize(0.1f, 0.1f, 0.1f);
    voxel.filter(*cloud);

    pcl::NormalEstimation<pcl::PointXYZRGB, pcl::Normal> ne;
    pcl::PointCloud<pcl::Normal>::Ptr cloud_normals(new pcl::PointCloud<pcl::Normal>);
    pcl::search::KdTree<pcl::PointXYZRGB>::Ptr tree(new pcl::search::KdTree<pcl::PointXYZRGB>);
    tree->setInputCloud(cloud);
    ne.setInputCloud(cloud);
    ne.setSearchMethod(tree);
    ne.setKSearch(20);
    ne.compute(*cloud_normals);

    pcl::PointCloud<pcl::PointXYZRGBNormal>::Ptr cloud_with_normals(new pcl::PointCloud<pcl::PointXYZRGBNormal>);
    pcl::concatenateFields(*cloud, *cloud_normals, *cloud_with_normals);

    pcl::search::KdTree<pcl::PointXYZRGBNormal>::Ptr tree2(new pcl::search::KdTree<pcl::PointXYZRGBNormal>);
    tree2->setInputCloud(cloud_with_normals);

    pcl::GreedyProjectionTriangulation<pcl::PointXYZRGBNormal> gp3;
    pcl::PolygonMesh triangles;
    gp3.setSearchRadius(0.5);
    gp3.setMu(3.0);
    gp3.setMaximumNearestNeighbors(150);
    gp3.setMaximumSurfaceAngle(M_PI / 4);
    gp3.setMinimumAngle(M_PI / 18);
    gp3.setMaximumAngle(2 * M_PI / 3);
    gp3.setNormalConsistency(false);
    gp3.setInputCloud(cloud_with_normals);
    gp3.setSearchMethod(tree2);
    gp3.reconstruct(triangles);

    pcl::io::savePLYFile(output_ply_file, triangles);
    std::cout << "✅ PLY file saved: " << output_ply_file << std::endl;

    return 0;
}

