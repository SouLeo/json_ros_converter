#!/usr/bin/env python

import rospy
from rospy_message_converter import json_message_converter
from std_msgs.msg import String
from temoto2_rosmsg_to_json.msg import *

def cb(data):
    # publish in the listener cb
    # gets ROSMSG data and outputs JSON formatted data
    talker(data.data)

def listener():
    rospy.Subscriber("slu_chatter", String, cb)
    rospy.spin()

def talker(str_data):
    json_str = json_message_converter.convert_ros_message_to_json(str_data)
    pub.publish(json_str)

if __name__ == '__main__':
    try:
        # listens for ROSMSG types
        # test: message = String(data = 'Hello')
        # test: json_str = json_message_converter.convert_ros_message_to_json(message)
        # test: print(json_str)        
        
        # TODO:
        # Define custom message format with the following basic fields:
        # + Intents/Actions
        # + Entities/Params/Input Parameters
        # + Ordering of Actions
        rospy.init_node('ros_msg_to_json')
        pub = rospy.Publisher('json_chatter', String, queue_size=10)
        listener()
    except rospy.ROSInterruptException:
        pass
