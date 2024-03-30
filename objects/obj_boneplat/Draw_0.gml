siner += 1
if (z_b != 0)
    hspeed = (cos((z_a * siner)) * z_b)
draw_set_color(c_white)
draw_rectangle((x - len), y, (x + len), (y + 6), true)
draw_set_color(c_green)
draw_rectangle((x - len), (y + 2), (x + len), (y - 4), true)
if collision_rectangle(((x - len) + 2), (y + 2), ((x + len) - 2), (y - 4), obj_heart, 0, 1)
{
    if (obj_heart.vspeed >= 0 && obj_heart.y <= (y - 11))
    {
        lock = 1
        obj_heart.y = (y - 16)
        obj_heart.vspeed = 0
        obj_heart.jumpstage = 1
    }
}
else
{
    if (lock == 1 && obj_heart.jumpstage == 1)
    {
        obj_heart.jumpstage = 2
        obj_heart.vspeed = 0
    }
    lock = 0
}
if (lock == 1)
{
    obj_heart.x += hspeed
    obj_heart.y += vspeed
    if (obj_heart.x < (global.idealborder[0] + 5))
        obj_heart.x = (global.idealborder[0] + 5)
    if (obj_heart.x > (global.idealborder[1] - 16))
        obj_heart.x = (global.idealborder[1] - 16)
}
if (x < (0 - len) && hspeed < 0)
    instance_destroy()
if (x > (640 + len) && hspeed > 0)
    instance_destroy()
if (vspeed > 0 && y > global.idealborder[3])
    instance_destroy()
if (jud == 1)
{
    jtimer += 1
    if (jtimer >= 5 && jtimer <= 20)
        hspeed += 0.25
    if (jtimer == 21)
        hspeed = 3
    if (x > (global.idealborder[1] - len))
    {
        if (hspeed > 0)
            hspeed *= -1
    }
    if (x < (global.idealborder[0] + len))
    {
        if (hspeed < 0)
            hspeed *= -1
    }
}
