#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist

'''
針對小客車，直走
'''

def move_hatchback():
    rospy.init_node('hatchback_red_controller', anonymous=True)
    pub = rospy.Publisher('/hatchback_red/cmd_vel', Twist, queue_size=10)

    rate = rospy.Rate(10)  # 10Hz
    move_cmd = Twist()
    move_cmd.linear.x = 0.5   # 向前移動
    move_cmd.angular.z = 0.0  # 不轉向

    rospy.loginfo("Sending movement commands to hatchback_red...")

    while not rospy.is_shutdown():
        pub.publish(move_cmd)
        rate.sleep()

if __name__ == '__main__':
    try:
        move_hatchback()
    except rospy.ROSInterruptException:
        pass
