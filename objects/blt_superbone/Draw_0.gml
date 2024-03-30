draw_self_border()
if (x < (global.idealborder[1] + 40) && x > (global.idealborder[1] + 10) && obj_heart.x > (global.idealborder[1] - 60) && appear == 0)
{
    appear = 1
    y = obj_heart.y
}
if (x < (global.idealborder[0] + 20) && hspeed < 0)
    global.border = 5
if (x < (global.idealborder[0] - 40) && hspeed < 0)
    instance_destroy()
if (x > (global.idealborder[1] + 100) && hspeed > 0)
    instance_destroy()
if (global.invc < 2 && abs(((obj_heart.x + 30) - x)) < 80)
{
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
        event_user(1)
}
