global.interact = 1
obj_mainchara.image_speed = 0
if (obj_mainchara.speed == 0)
{
    obj_mainchara.x = obj_mainchara.xprevious
    obj_mainchara.y = obj_mainchara.yprevious
    if obj_time.up
        obj_mainchara.vspeed = -3
    if obj_time.down
        obj_mainchara.vspeed = 3
    if obj_time.right
        obj_mainchara.hspeed = 3
    if obj_time.left
        obj_mainchara.hspeed = -3
}
obj_iceevent.alarm[0] = 3
