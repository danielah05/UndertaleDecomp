xx = (global.idealborder[0] + random(c_borderwidth(0)))
if (otheri == 0)
{
    yy = -40
    xx = (obj_heart.x + 10)
    otheri = 1
}
else
{
    otheri = 0
    yy = (room_height + 40)
}
instance_create(xx, yy, obj_warplinebullet)
alarm[1] = 18
if instance_exists(obj_greenarmor)
    alarm[1] = 24
