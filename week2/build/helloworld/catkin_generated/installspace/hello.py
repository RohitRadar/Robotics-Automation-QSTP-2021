#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def talker():
	pub = rospy.Publisher('hello',String, queue_size=5)
	rospy.init_node('hello1', anonymous=False)
	rate = rospy.Rate(1)
	while not rospy.is_shutdown():
		hello = "hello"
		rospy.loginfo(hello)
		pub.publish(hello)
		rate.sleep()
if __name__=="__main__":
	try:
		talker()
	except rospy.ROSInterruptException:
		pass
