type = choose(0, 1, 2, 3)
if (type == 0 || type == 2)
{
    hspeed = (2 + random(3))
    hspeed *= choose(-1, 1)
    if (type == 0)
    {
        gravity_direction = 270
        y = (global.idealborder[2] - 20)
    }
    if (type == 2)
    {
        image_angle = 180
        gravity_direction = 90
        y = (global.idealborder[3] + 20)
    }
}
if (type == 1 || type == 3)
{
    y = ((((global.idealborder[2] + global.idealborder[3]) / 2) + 50) - random(100))
    vspeed = (2 + random(4))
    vspeed *= choose(-1, 1)
    if (type == 1)
    {
        image_angle = 90
        gravity_direction = 0
        x = (global.idealborder[0] - 20)
    }
    if (type == 3)
    {
        image_angle = 270
        gravity_direction = 180
        x = (global.idealborder[1] + 20)
    }
}
gravity = 0.18
friction = 0.03
bounce = 0
on = 0
flash = false
expl = 0
image_speed = 0
