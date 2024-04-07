if (type == 0)
{
    alarm[0] = 13
    gb[num] = instance_create((obj_heart.x + 8), (obj_heart.y + 8), obj_gasterblaster)
    if instance_exists(gb[num])
    {
        dd = random(360)
        gb[num].idealx = (gb[num].x + lengthdir_x(200, dd))
        gb[num].idealy = (gb[num].y + lengthdir_y(200, dd))
        if (gb[num].idealy > 440)
            gb[num].idealy = 440
        if (gb[num].idealy < 40)
            gb[num].idealy = 40
        if (gb[num].idealx < 50)
            gb[num].idealx = 50
        if (gb[num].idealx > 590)
            gb[num].idealx = 590
        gb[num].x = (gb[num].x + lengthdir_x(400, dd))
        gb[num].y = (gb[num].y + lengthdir_y(300, dd))
        with (gb[num])
            idealrot = (point_direction(idealx, idealy, (obj_heart.x + 8), (obj_heart.y + 8)) + 90)
        gb[num].image_xscale = 1
        gb[num].image_yscale = 2
        gb[num].terminal = 1
        gb[num].pause = 9
    }
}
if (type == 1)
{
    alarm[0] = 16
    gb[num] = instance_create((obj_heart.x + 8), (obj_heart.y + 8), obj_gasterblaster)
    dd = random(360)
    if instance_exists(gb[num])
    {
        gb[num].idealx = (gb[num].x + lengthdir_x(200, dd))
        gb[num].idealy = (gb[num].y + lengthdir_y(200, dd))
        if (gb[num].idealy > 440)
            gb[num].idealy = 440
        if (gb[num].idealy < 40)
            gb[num].idealy = 40
        if (gb[num].idealx < 50)
            gb[num].idealx = 50
        if (gb[num].idealx > 590)
            gb[num].idealx = 590
        gb[num].x = (gb[num].x + lengthdir_x(400, dd))
        gb[num].y = (gb[num].y + lengthdir_y(300, dd))
        with (gb[num])
            idealrot = (point_direction(idealx, idealy, (obj_heart.x + 8), (obj_heart.y + 8)) + 90)
        gb[num].image_xscale = 1
        gb[num].image_yscale = 2
        gb[num].terminal = 1
        gb[num].pause = 14
    }
}
if (type == 2)
{
    alarm[0] = 20
    gb[num] = instance_create((obj_heart.x + 8), (obj_heart.y + 8), obj_gasterblaster)
    dd = random(360)
    if instance_exists(gb[num])
    {
        gb[num].idealx = (gb[num].x + lengthdir_x(200, dd))
        gb[num].idealy = (gb[num].y + lengthdir_y(200, dd))
        if (gb[num].idealy > 440)
            gb[num].idealy = 440
        if (gb[num].idealy < 40)
            gb[num].idealy = 40
        if (gb[num].idealx < 50)
            gb[num].idealx = 50
        if (gb[num].idealx > 590)
            gb[num].idealx = 590
        gb[num].x = (gb[num].x + lengthdir_x(400, dd))
        gb[num].y = (gb[num].y + lengthdir_y(300, dd))
        with (gb[num])
            idealrot = (point_direction(idealx, idealy, (obj_heart.x + 8), (obj_heart.y + 8)) + 90)
        gb[num].image_xscale = 2
        gb[num].image_yscale = 2
        gb[num].terminal = 1
        gb[num].pause = 20
    }
}
num += 1
