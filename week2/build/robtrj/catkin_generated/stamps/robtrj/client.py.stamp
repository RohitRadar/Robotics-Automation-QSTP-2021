#!/usr/bin/env python

from __future__ import print_function
import sys
import rospy
from robtrj.srv import msgvar
import numpy as np
import matplotlib.pyplot as plt
import math


def client(x,y,theta,v,w):
	rospy.wait_for_service('create_trajectory')
	try:
		traj = rospy.ServiceProxy('create_trajectory',msgvar)
		resp = traj(x,y,theta,v,w)
		return resp.x1,resp.y1,resp.theta1
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)

def usage():
	return "%s [x y theta v w]"%sys.argv[0]

if __name__=="__main__":
    if len(sys.argv)==6:
        x = float(sys.argv[1])
        y = float(sys.argv[2])
        theta = float(sys.argv[3])
        v = float(sys.argv[4])
        w = float(sys.argv[5])
        print("Requesting trajectory")
        x1,y1,theta1 = client(x,y,theta,v,w)
        plt.title(f"Unicycle Model: {v}, {w}")
        plt.xlabel("X-Coordinates")
        plt.ylabel("Y-Coordinates")
        plt.plot(x1, y1, color="red", alpha=0.75)
        plt.grid()
        plt.savefig('/home/rohitd/rosqstp/week2/src/robtrj/traj.png')
        print("Trajectory path saved to robtrj folder")
    else:
        print(usage())
        sys.exit(1)
	
