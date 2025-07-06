#include <pcl/io/ply_io.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/surface/poisson.h>
#include <pcl/features/normal_3d.h>
#include <pcl/common/time.h>
#include <pcl/common/io.h>

#include <iostream>
#include <string>
#include <ctime>

std::string get_filename_stem(const std::string& path) {
    size_t last_slash = path.find_last_of("/\\");
    size_t last_dot = path.find_last_of('.');
    if (last_dot == std::string::npos || last_dot < last_slash) last_dot = path.size();
    return path.substr(last_slash + 1, last_dot - last_slash - 1);
}

int main(int argc, char** argv)
{
    if (argc < 2 || argc > 3)
    {
        std::cerr << "Usage: " << argv[0] << " <input.pcd> [output.ply]" << std::endl;
        return -1;
    }

    std::string input_filename = argv[1];
    std::string output_filename;

    if (argc == 3) {
        output_filename = argv[2];
    } else {
        // 沒給 output 檔名就自動產生一個
        std::string stem = get_filename_stem(input_filename);
        std::time_t now = std::time(nullptr);
        char timestamp[64];
        std::strftime(timestamp, sizeof(timestamp), "%Y%m%d_%H%M", std::localtime(&now));
        output_filename = stem + "_" + timestamp + ".ply";
    }

    // 讀取含有顏色資訊的 PCD 文件
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGB>);
    if (pcl::io::loadPCDFile(input_filename, *cloud) < 0)
    {
        std::cerr << "Failed to load PCD file: " << input_filename << std::endl;
        return -1;
    }

    // 計算法向量
    pcl::NormalEstimation<pcl::PointXYZRGB, pcl::Normal> ne;
    pcl::PointCloud<pcl::Normal>::Ptr cloud_normals(new pcl::PointCloud<pcl::Normal>);
    pcl::search::KdTree<pcl::PointXYZRGB>::Ptr tree(new pcl::search::KdTree<pcl::PointXYZRGB>);
    tree->setInputCloud(cloud);
    ne.setInputCloud(cloud);
    ne.setSearchMethod(tree);
    ne.setKSearch(20);
    ne.compute(*cloud_normals);

    // 合併點雲與法向量
    pcl::PointCloud<pcl::PointXYZRGBNormal>::Ptr cloud_with_normals(new pcl::PointCloud<pcl::PointXYZRGBNormal>);
    pcl::concatenateFields(*cloud, *cloud_normals, *cloud_with_normals);

    // Poisson 網格重建
    pcl::Poisson<pcl::PointXYZRGBNormal> poisson;
    poisson.setDepth(8);
    poisson.setInputCloud(cloud_with_normals);

    pcl::PolygonMesh mesh;
    poisson.reconstruct(mesh);

    // 儲存為 PLY
    if (pcl::io::savePLYFile(output_filename, mesh) < 0)
    {
        std::cerr << "Failed to save mesh to: " << output_filename << std::endl;
        return -1;
    }

    std::cout << "Mesh saved to: " << output_filename << std::endl;
    return 0;
}
