if (c == 1)
{
    hspeed = 1.5
    gravity = 0.2
    gravity_direction = 270
    vspeed = -1
    c = 2
}
if (c == 2 && y > (ystart + 70))
{
    hspeed = 0
    vspeed = 0
    gravity = 0
    c = 3
}
if (c == 5)
{
    gravity = 0.2
    c = 6
}
if (c == 6 && y > (ystart + 135))
{
    vspeed = 0
    gravity = 0
}
if (c == 7)
{
    ddd = instance_create(x, y, obj_vaporized_new)
    with (ddd)
        scr_newvapordata(10)
    ddd.sprite_index = sprite_index
    ddd.ht = sprite_height
    ddd.wd = sprite_width
    instance_destroy()
}
