#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist,Point, Pose, PoseStamped, Quaternion
from std_msgs.msg import Header
from nav_msgs.msg import Path


def pathfol(msg):
    print(msg)

path_scan = rospy.Subscriber('/path1',Path,pathfol)
traj_pub = rospy.Publisher('/cmd_vel',Twist.queue_size=1)
rospy.init_node('path_follow')
rate=rospy.Rate(10)
twist = Twist()

while not rospy.is_shutdown():
    cmd_vel_pub.publish(twist)
    rate.sleep()
