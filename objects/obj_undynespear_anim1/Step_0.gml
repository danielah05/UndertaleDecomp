if (part == 1)
{
    sprite_index = spr_undynespear
    scr_getideal((obj_mainchara.x - 13), (obj_mainchara.y - 5))
    part = 2
    alarm[4] = 16
    image_angle -= 450
    curangle = image_angle
    ss = 0
}
if (part == 2)
{
    ss += 1
    scr_moveideal(16)
    image_angle += 10
}
if (part == 3)
{
    image_angle = 140
    instance_create(210, 155, obj_controlspear)
    instance_destroy()
}
