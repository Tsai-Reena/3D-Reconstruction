#include <pcl/io/ply_io.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/surface/poisson.h>
#include <pcl/features/normal_3d.h>

int main(int argc, char** argv)
{
    // 讀取 PCD 文件 (含顏色資訊)
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGB>);
    if (pcl::io::loadPCDFile("/media/user/HDD/r3liveGPU_output/floor.pcd", *cloud) == -1) 
    {
        PCL_ERROR("Couldn't read the PCD file \n");
        return (-1);
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

    // 合併點雲與法向量，保留顏色資訊
    pcl::PointCloud<pcl::PointXYZRGBNormal>::Ptr cloud_with_normals(new pcl::PointCloud<pcl::PointXYZRGBNormal>);
    pcl::concatenateFields(*cloud, *cloud_normals, *cloud_with_normals);

    // Poisson 網格重建
    pcl::Poisson<pcl::PointXYZRGBNormal> poisson;
    poisson.setDepth(8); // 重建深度，可以根據需要調整
    poisson.setInputCloud(cloud_with_normals);

    pcl::PolygonMesh mesh;
    poisson.reconstruct(mesh);

    // 保存網格為 PLY 文件
    pcl::io::savePLYFile("mesh_output_poissonColor2.ply", mesh);

    return 0;
}
