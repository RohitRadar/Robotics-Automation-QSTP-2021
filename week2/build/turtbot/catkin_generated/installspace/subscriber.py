#!/usr/bin/env python3
import rospy
from turtbot.srv import angvel,angvelResponse
from std_msgs.msg import Float32
from geometry_msgs.msg import Twist

def callback(data):
    r = data.data
    pub = rospy.Publisher('/turtle1/cmd_vel',Twist,queue_size=10)
    rospy.wait_for_service('compute_ang_vel')
    try:
        calc = rospy.ServiceProxy('compute_ang_vel',angvel)
        res = calc(r)
        #print('Received angvel as %s'%res.vel)
        ang_vel =res.vel
        rate = rospy.Rate(10)    
        t = Twist()
        t.linear.x = 0.5
        t.angular.z = ang_vel
        rospy.loginfo(t)
        pub.publish(t)
        rate.sleep()
    except rospy.ServiceException as e:
        print("service call failed: %s"%e)

def setup():
    rospy.init_node('subscriber')
    sub = rospy.Subscriber('radius',Float32,callback)
    rospy.spin()

if __name__=="__main__":
    setup()
