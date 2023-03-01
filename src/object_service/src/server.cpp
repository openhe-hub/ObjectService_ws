#include <ros/ros.h>

#include <object_service/Demo.h>

#include "object_service/ObjManager.hpp"
#include "object_service/defs.h"
#include "object_service/value.hpp"

bool serverCallback(object_service::Demo::Request& req,
                    object_service::Demo::Response& resp) {
    if (req.command == Command::CREATE) {
        auto data = umt::ObjManager<defs::Demo>::find_or_create(req.name);
        data->num = req.num;
        data->text = req.text;
        resp.status = (data == nullptr) ? false : true;
    } else if (req.command == Command::READ) {
        auto data = umt::ObjManager<defs::Demo>::find_or_create(req.name);
        if (data != nullptr) {
            resp.status = true;
            resp.num = data->num;
            resp.text = data->text;
        } else {
            resp.status = false;
        }
    }
    return resp.status;
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "server");
    ros::NodeHandle node;
    ros::ServiceServer server = node.advertiseService("demo", serverCallback);
    ros::spin();
    return 0;
}