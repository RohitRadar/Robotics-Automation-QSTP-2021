#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float32
from turtbot.srv import angvel,angvelResponse

def handle(req):
    r = req.radius 
    ang_vel = 0.5/r
    print("Sending angvel equal to %s for rad %s"%(angvel,r))
    try:
        return angvelResponse(ang_vel)
    except Exception as e:
        print("%s Exception was thrown"%s)

def server():
    rospy.init_node('server_node')
    service = rospy.Service('compute_ang_vel',angvel,handle)
    print("Terminal Ready")
    rospy.spin()

if __name__ == "__main__":
    server()
