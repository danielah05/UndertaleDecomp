image_speed = 0
dmg = 0
dmg2 = dmg
alarm[6] = 20
gg = floor(random(2))
if collision_line((x + (sprite_width / 2)), 0, (x + (sprite_width / 2)), room_height, object_index, false, true)
{
    if (gg == 1)
        x += (sprite_width / 2)
    if (gg == 0)
        x -= (sprite_width / 2)
}
vspeed = -1.5
y = (global.idealborder[3] + 2)
if (x > (global.idealborder[1] - sprite_width))
    x -= random((global.idealborder[1] - global.idealborder[0]))
if (x < global.idealborder[0])
    x += random((global.idealborder[1] - global.idealborder[0]))
if (instance_position((x + (sprite_width / 2)), (y - 15), object_index) != noone)
{
    if (gg == 1)
        x += (sprite_width / 2)
    if (gg == 0)
        x -= (sprite_width / 2)
}
if (collision_line((obj_heart.x + 8), 0, obj_heart.x, room_height, object_index, false, true) < 0 && collision_line((obj_heart.x + 8), 0, obj_heart.x, room_height, blt_icicle, false, true) < 0)
    x = ((6 + obj_heart.x) - (sprite_width / 2))
