#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/PointStamped.h"
#include "visualization_msgs/Marker.h"
#include "visualization_msgs/MarkerArray.h"
#include "std_msgs/Float32MultiArray.h"
#include <cmath>
#include <chrono>
#include <vector>
#include <std_msgs/Int8MultiArray.h>

class CameraPointListener {
public:
    CameraPointListener() {
        sub = nh.subscribe("/yolo/objects/world_point_array", 10, &CameraPointListener::pointCallback, this);
        pub = nh.advertise<visualization_msgs::MarkerArray>("/yolo/objects/cone_marker", 10);
    }

    void pointCallback(const std_msgs::Float32MultiArray::ConstPtr& msg) {
        markerArray.markers.clear();

        std::vector<geometry_msgs::Point> world_points;
        for (size_t i = 0; i < msg->data.size(); i += 3) {
            geometry_msgs::Point point;
            point.x = msg->data[i];
            point.y = msg->data[i + 1];
            point.z = msg->data[i + 2];
            world_points.push_back(point);
        }

        // Publish the markers for visualization
        for (size_t i = 0; i < world_points.size(); ++i) {
            visualization_msgs::Marker marker;
            marker.header.frame_id = "map";
            marker.header.stamp = ros::Time::now();
            marker.ns = "world_points";
            marker.id = i;
            marker.type = visualization_msgs::Marker::SPHERE;
            marker.action = visualization_msgs::Marker::ADD;
            marker.pose.position = world_points[i];
            marker.pose.orientation.w = 1.0;
            marker.scale.x = marker.scale.y = marker.scale.z = 0.1;
            marker.color.r = 1.0;
            marker.color.g = 0.0;
            marker.color.b = 0.0;
            marker.color.a = 1.0;
            markerArray.markers.push_back(marker);
        }

        pub.publish(markerArray);
    }

private:
    ros::NodeHandle nh;
    ros::Subscriber sub;
    ros::Publisher pub;
    visualization_msgs::MarkerArray markerArray;
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "cone_marker");
    CameraPointListener listener;
    ros::spin();

    return 0;
}
