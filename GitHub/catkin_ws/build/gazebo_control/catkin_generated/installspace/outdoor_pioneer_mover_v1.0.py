#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
'''
針對小車子（速度太慢，但可以成功執行）
'''

speedup = 100

def move():
    rospy.init_node('outdoor_pioneer_mover')
    pub = rospy.Publisher('/pioneer2dx/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)  # 10 Hz

    # 停 5 秒
    rospy.loginfo("Waiting 5 seconds...")
    for _ in range(50):
        pub.publish(Twist())
        rate.sleep()

    # Step 1: 向左小轉彎 (輕微偏左)
    twist_left = Twist()
    twist_left.linear.x = 0.3 * speedup
    twist_left.angular.z = 0.2 * speedup  # 左轉為正

    rospy.loginfo("Turning left slightly...")
    for _ in range(100):  # 約 10 秒
        pub.publish(twist_left)
        rate.sleep()

    # Step 2: 正式繞圓
    twist_circle = Twist()
    twist_circle.linear.x = 0.4 * speedup
    twist_circle.angular.z = 0.25 * speedup

    rospy.loginfo("Circling around the flowerbed...")
    circle_time = int((2 * 3.14159 / twist_circle.angular.z) * 10)
    for _ in range(circle_time):
        pub.publish(twist_circle)
        rate.sleep()

    # Step 3: 停止
    rospy.loginfo("Stopping.")
    for _ in range(20):
        pub.publish(Twist())
        rate.sleep()

if __name__ == '__main__':
    try:
        move()
    except rospy.ROSInterruptException:
        pass
