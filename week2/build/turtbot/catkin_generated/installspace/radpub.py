#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float32

def talker():
    pub = rospy.Publisher('radius',Float32,queue_size=5)
    rospy.init_node('radius_publish')
    rate=rospy.Rate(10)
    radius=1.0
    while not rospy.is_shutdown():
        #rospy.loginfo(radius)
        pub.publish(radius)
        rate.sleep()

if __name__=="__main__":
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
