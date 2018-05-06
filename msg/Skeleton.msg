#Header header # I CANT GET THIS TO COMPILE!

int32 body_id
int32 tracking_status
int32 gesture

geometry_msgs/Point32 position2D # x,y in camera frame, z distance from camera

geometry_msgs/Point32 centerOfMass

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

# Robot is usually too close to see legs, and not very interesting


