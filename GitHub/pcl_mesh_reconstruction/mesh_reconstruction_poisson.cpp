#include <pcl/io/ply_io.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/surface/poisson.h>
#include <pcl/features/normal_3d.h>
#include <ctime>

int main(int argc, char** argv)
{
    // 讀取 PCD 文件
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>);
    std::cout << "Please input the point cloud file name (format: /media/user/HDD/r3liveGPU_output/xxx.pcd): ";
    std::string PointCloud_filename;
    std::cin >> PointCloud_filename;
    if (pcl::io::loadPCDFile(PointCloud_filename, *cloud) == -1) 
    {
        PCL_ERROR("Couldn't read the PCD file \n");
        return (-1);
    }

    // 計算法向量
    pcl::NormalEstimation<pcl::PointXYZ, pcl::Normal> ne;
    pcl::PointCloud<pcl::Normal>::Ptr cloud_normals(new pcl::PointCloud<pcl::Normal>);
    pcl::search::KdTree<pcl::PointXYZ>::Ptr tree(new pcl::search::KdTree<pcl::PointXYZ>);
    tree->setInputCloud(cloud);
    ne.setInputCloud(cloud);
    ne.setSearchMethod(tree);
    ne.setKSearch(20);
    ne.compute(*cloud_normals);

    // 合併點雲與法向量
    pcl::PointCloud<pcl::PointNormal>::Ptr cloud_with_normals(new pcl::PointCloud<pcl::PointNormal>);
    pcl::concatenateFields(*cloud, *cloud_normals, *cloud_with_normals);

    // Poisson 網格重建
    pcl::Poisson<pcl::PointNormal> poisson;
    poisson.setDepth(8); // 重建深度，可以根據需要調整
    poisson.setInputCloud(cloud_with_normals);

    pcl::PolygonMesh mesh;
    poisson.reconstruct(mesh);

    auto now = std::chrono::system_clock::now();
    std::time_t now_time = std::chrono::system_clock::to_time_t(now);

    std::stringstream time_stream;
    time_stream << std::put_time(std::localtime(&now_time), "%Y%m%d_%H%M%S");

    std::string filename = "mesh_output_poisson_" + time_stream.str() + ".ply";

    // 保存網格為 PLY 文件
    pcl::io::savePLYFile(filename, mesh);

    std::cout << "PLY File saved in /media/user/HDD/r3liveGPU_output/pcl_mesh_reconstruction/build" << filename << std::endl;

    return 0;
}
