#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import time
from math import pi

t = Twist()

def move():
    while True:
        start_time = time.time()
        while(time.time() - start_time < 4*pi):
            t.linear.x = 0.5
            t.angular.z = 0.5
            pub.publish(t)
        
        while(time.time() - start_time < 8*pi):
            t.linear.x = 0.5
            t.angular.z = -0.5
            pub.publish(t)

rospy.init_node('infinity_move')
pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=1)


r = rospy.Rate(10)

while not rospy.is_shutdown():
    start_time = time.time()
    move()
    r.sleep(2)
