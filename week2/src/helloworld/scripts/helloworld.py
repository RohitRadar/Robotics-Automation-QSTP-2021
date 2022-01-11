#!/usr/bin/env python

import rospy
from std_msgs.msg import String

hel=None
wor=None

def talker(hel,wor):
	pub = rospy.Publisher('helloworld',String, queue_size=5)
	#rospy.init_node('helloworldtalk', anonymous=False)
	hello = hel+" "+wor
	rospy.loginfo(hello)
	pub.publish(hello)

def callbackhel(data):
	global hel
	hel = data.data
	
def callbackwor(data):
	global wor
	wor = data.data
	talker(hel,wor)
def listener():
	rospy.init_node('helloworldlist',anonymous=False)
	rospy.Subscriber('hello',String,callbackhel)
	rospy.Subscriber('world',String,callbackwor)
	rospy.spin()

if __name__=="__main__":
	listener()
