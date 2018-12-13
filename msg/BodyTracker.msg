int32  body_id
int32  tracking_status
int32  gesture
bool   face_found

# 2d face bounding Box position in pixels from 0,0 (top left of image)
int32  face_left
int32  face_top
int32  face_width
int32  face_height
int32  age     # rough estimate of persons age
int32  gender  # 0 = unknown, 1 = male, 2 = female
string name    # if match for persons face found in database

geometry_msgs/Point32 position2d   # body x,y in camera frame, z = range from camera
geometry_msgs/Point32 position3d   # body x,y,z in world coordinates
geometry_msgs/Point32 face_center  # face x,y in camera frame, z = range from camera

