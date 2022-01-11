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
    twist.linear.x=0
    while(abs(thetago-theta)>0.05):
        err = thetago-theta
        print(err)
        if err>0:
            twist.angular.z = 0.7
            traj_pub.publish(twist)
        elif err<0:
            twist.angular.z = -0.7
            traj_pub.publish(twist)
        else:
            break
    twist.angular.z = 0.0
    traj_pub.publish(twist)
        
def pidlinear(kp,ki,kd,dist,pos1):
    xgo = pos1[0]
    ygo = pos1[1]
    err=0.5
    while(err>0.1):
        erra = math.atan2(ygo-y,xgo-x) - theta
        err = pow(pow(xgo-x,2)+pow(ygo-y,2),0.5)
        twist.linear.x = 0.5
        twist.angular.z = 0.8*erra
        print(err,erra)
        traj_pub.publish(twist)
    twist.angular.z = 0.0
    twist.linear.x = 0.0
    traj_pub.publish(twist)
    
if __name__=="__main__":
    #path_scan = rospy.Subscriber('/path1',Path,pathscan)
    #path_scan = rospy.Subscriber('/path2',Path,pathscan)
    path_scan = rospy.Subscriber('/path3',Path,pathscan)
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
    while(a>i):
        pos1 = pa[i]
        dist = pow(pow(x-pos1[0],2)+pow(y-pos1[1],2),0.5)
        thetago = math.atan2(pos1[1]-y,pos1[0]-x)
        print(dist,thetago)
        print(x,theta)
        pidangular(0.5,0.0,0.0,thetago)
        pidlinear(0.5,0.0,0.0,dist,pos1)
        i=i+1
    twist.linear.x=0.0
    twist.angular.z=0.0
    traj_pub.publish(twist)
    rate.sleep()
    
    
    
    
    
    
    
    
    
    
