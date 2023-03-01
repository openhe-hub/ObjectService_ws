#include <object_service/Test.h>
#include <ros/ros.h>
#include <object_service/ObjManager.hpp>


class Client {
   private:
    int a, b;
    ros::NodeHandle node;
    ros::ServiceClient client;

   public:
    Client() {
        a = b = 1;
        this->client =
            node.serviceClient<object_service::Test::Request>("service_test");
    }
    void request() {
        object_service::Test data;
        data.request.num1 = this->a;
        data.request.num2 = this->b;
        if (this->client.call(data)) {
            ROS_INFO("%lf+%lf=%lf", this->a, this->b, data.response.sum);

        } else {
            ROS_WARN("server response failed.");
        }
    }
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "client1");

    Client client;
    ros::Rate rate(1);
    for (int i = 1; i <= 10; i++) {
        client.request();
        rate.sleep();
    }
    ros::spin();
    return 0;
}