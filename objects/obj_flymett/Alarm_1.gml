mode = 2
if (overmode == 2)
    mode = 3
sh = instance_create(((x + 11) + lengthdir_x(26, ang)), ((y + 15) + lengthdir_y(26, ang)), obj_flylight_a)
sh.direction = ang
sh.speed = 4
shotno += 1
if (shotno < 6)
    alarm[1] = 2
else
{
    mode = 0
    shotno = 0
}
