if (attackyou == 1)
{
    attackratio += 1
    move_towards_point(obj_fakeheart.x, obj_fakeheart.y, ((((0.1 * attackratio) * attackratio) * attackratio) + random(0.5)))
    direction += (random(4) - random(2))
    depth = -500
    attackyou = 2
    friction = (-0.04 * attackratio)
}
if (attackyou == 3)
    instance_destroy()
