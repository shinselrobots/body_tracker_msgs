#Header header - I CANT GET THIS TO COMPILE!
# BodyTracker
int32 body_id
int32 tracking_status
# NOT_TRACKING = 0
# TRACKING_LOST = 1
# TRACKING_STARTED = 2
# TRACKING = 3

int32 gesture # 0 = none, 1 = right fist, 2 = left fist, 3 = waving
geometry_msgs/Point centerOfMass

#Position of interesting joints
geometry_msgs/Point32 joint_position_head
geometry_msgs/Point32 joint_position_neck
geometry_msgs/Point32 joint_position_shoulder
geometry_msgs/Point32 joint_position_spine_top
geometry_msgs/Point32 joint_position_spine_mid
geometry_msgs/Point32 joint_position_spine_bottom

geometry_msgs/Point32 joint_position_left_shoulder
geometry_msgs/Point32 joint_position_left_elbow
geometry_msgs/Point32 joint_position_left_hand

geometry_msgs/Point32 joint_position_right_shoulder
geometry_msgs/Point32 joint_position_right_elbow
geometry_msgs/Point32 joint_position_right_hand




