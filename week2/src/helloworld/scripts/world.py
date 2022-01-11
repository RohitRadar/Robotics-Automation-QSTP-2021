import rospy
from std_msgs.msg import String

def talker():
	pub = rospy.Publisher('world',String, queue_size=5)
	rospy.init_node('world1', anonymous=False)
	rate = rospy.Rate(1)
	while not rospy.is_shutdown():
		hello = "World!"
		rospy.loginfo(hello)
		pub.publish(hello)
		rate.sleep()
if __name__=="__main__":
	try:
		talker()
	except rospy.ROSInterruptException:
		pass
