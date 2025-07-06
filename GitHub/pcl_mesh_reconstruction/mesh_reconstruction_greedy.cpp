#include <pcl/io/ply_io.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/surface/gp3.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/features/normal_3d.h>

int main(int argc, char** argv)
{
    // 讀取 PCD 文件
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>);
    pcl::io::loadPCDFile("/media/user/HDD/r3liveGPU_output/atrium_building_normal.pcd", *cloud);

    // **步驟 1: 使用限界篩選器來限制點雲的範圍**
    pcl::PassThrough<pcl::PointXYZ> pass;
    pass.setInputCloud(cloud);
    pass.setFilterFieldName("z"); // 根據需要設定軸，例如 "z"
    pass.setFilterLimits(-15.0, 25.0); // 設定篩選範圍
    pass.filter(*cloud);

    // **步驟 2: 使用體素網格降採樣來減少點的密度**
    pcl::VoxelGrid<pcl::PointXYZ> voxel;
    voxel.setInputCloud(cloud);
    voxel.setLeafSize(0.1f, 0.1f, 0.1f); // 設定體素大小 (根據需要調整)
    voxel.filter(*cloud);

    // 計算法向量
    pcl::NormalEstimation<pcl::PointXYZ, pcl::Normal> ne;
    pcl::PointCloud<pcl::Normal>::Ptr cloud_normals(new pcl::PointCloud<pcl::Normal>);
    pcl::search::KdTree<pcl::PointXYZ>::Ptr tree(new pcl::search::KdTree<pcl::PointXYZ>);
    tree->setInputCloud(cloud);
    ne.setInputCloud(cloud);
    ne.setSearchMethod(tree);
    ne.setKSearch(20);
    ne.compute(*cloud_normals);

    // 將點雲與法向量合併
    pcl::PointCloud<pcl::PointNormal>::Ptr cloud_with_normals(new pcl::PointCloud<pcl::PointNormal>);
    pcl::concatenateFields(*cloud, *cloud_normals, *cloud_with_normals);

    // 設定搜索樹
    pcl::search::KdTree<pcl::PointNormal>::Ptr tree2(new pcl::search::KdTree<pcl::PointNormal>);
    tree2->setInputCloud(cloud_with_normals);

    // 使用 GreedyProjectionTriangulation 進行三角化
    pcl::GreedyProjectionTriangulation<pcl::PointNormal> gp3;
    pcl::PolygonMesh triangles;
    gp3.setSearchRadius(0.2); // 根據資料調整半徑
    gp3.setMu(2.5);
    gp3.setMaximumNearestNeighbors(150);
    gp3.setMaximumSurfaceAngle(M_PI / 4); // 弧度
    gp3.setMinimumAngle(M_PI / 18);       // 弧度
    gp3.setMaximumAngle(2 * M_PI / 3);    // 弧度
    gp3.setNormalConsistency(false);

    gp3.setInputCloud(cloud_with_normals);
    gp3.setSearchMethod(tree2);
    gp3.reconstruct(triangles);

    // 保存網格為 PLY 文件
    pcl::io::savePLYFile("mesh_output_greedy_test.ply", triangles);

    return 0;
}
