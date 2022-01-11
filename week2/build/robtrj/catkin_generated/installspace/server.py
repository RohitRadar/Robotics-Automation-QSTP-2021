#!/usr/bin/env python3

from __future__ import print_function
from robtrj.srv import msgvar, msgvarResponse
import rospy
import numpy as np
import math

def handle(req):
	x = req.x
	y = req.y
	theta = req.theta
	v = req.v
	w = req.w
	x1 = []
	y1 = []
	theta1 = []
	n = 50
	dt = 5/100
	for i in range(0,n):
	    x=x+v*math.cos(theta)*dt
	    y=y+v*math.sin(theta)*dt
	    theta=theta+w*dt
	    x1.append(x)
	    y1.append(y)
	    theta1.append(theta)
	return x1,y1,theta1
def server():
	rospy.init_node('trajectory')
	s = rospy.Service('create_trajectory', msgvar,handle)
	print("Terminal Ready")
	rospy.spin()
	
if __name__ == "__main__":
	server()
