if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
    event_user(6)
if (global.turntimer <= 0)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
