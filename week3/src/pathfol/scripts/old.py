#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist,Point, Pose, PoseStamped, Quaternion
from nav_msgs.msg import Path
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import math
from time import sleep

x=0
y=0
theta=0
path=1
def pathscan(msg):
    global path
    path = msg

def poscan(msg):
    global x,y,theta
    x = msg.pose.pose.position.x
    y = msg.pose.pose.position.y
    angles = msg.pose.pose.orientation #between 0 and 1,sintheta,0 at +x and 1 at -x
    anglelist = [angles.x, angles.y, angles.z, angles.w]
    (roll,pitch,theta) = euler_from_quaternion(anglelist)

def pidangular(kp,ki,kd,thetago):
    err=0
    prev_err=0
    sum_err=0
    twist.linear.x=0
    while(int(thetago*10)!=int(theta*10)):
        err = (thetago-theta)
        print(err)
        twist.angular.z = err*kp + prev_err*kd + sum_err*ki
        prev_err = err
        sum_err = sum_err+err
        traj_pub.publish(twist)
def pidlinear(kp,ki,kd,dist,thetago,xgo,ygo):
    err=0
    prev_err=0
    sum_err=0
    erra=0
    prev_erra=0
    sum_erra=0
    while(int(xgo)!=int(x) or int(ygo)!=int(y)):
        erra = thetago-theta
        twist.angular.z = erra*kp + prev_erra*kd + sum_erra*ki
        prev_erra = erra
        sum_erra = sum_erra+erra
        err = pow(pow(ygo-y,2)+pow(xgo-x,2),0.5)
        twist.linear.x = err*kp + prev_err*kd + sum_err*ki
        #print(err)
        prev_err = err
        sum_err = sum_err+err
        traj_pub.publish(twist)
    
if __name__=="__main__":
    #path_scan = rospy.Subscriber('/path1',Path,pathscan)
    path_scan = rospy.Subscriber('/path2',Path,pathscan)
    #path_scan = rospy.Subscriber('/path3',Path,pathscan)
    pos_scan = rospy.Subscriber('/odom',Odometry,poscan)
    traj_pub = rospy.Publisher('/cmd_vel',Twist,queue_size=1)
    rospy.init_node('path_follow')
    rate=rospy.Rate(10)
    twist = Twist()
    pa=[]
    while path==1:
        pp=0
    for i in range (0,len(path.poses)):
        xgo = path.poses[i].pose.position.x
        ygo = path.poses[i].pose.position.y
        p = [xgo,ygo]
        pa.append(p)
    i=0
    a = len(pa)
    while(a>i+1):
        pos1 = pa[i]
        pos2 = pa[i+1]
        dist = pow(pow(pos2[0]-pos1[0],2)+pow(pos2[1]-pos1[1],2),0.5)
        thetago = math.atan((pos2[1]-pos1[1])/pos2[0]-pos1[0])
        print(dist,thetago)
        print(x,theta)
        pidangular(0.5,0.0,0.0,thetago)
        pidlinear(0.2,0.0,0.0,dist,thetago,pos2[0],pos2[1])
        twist.linear.x=0.0
        twist.angular.z=0.0
        traj_pub.publish(twist)
        i=i+1
    rate.sleep()
