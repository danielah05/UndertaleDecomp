if (instance_number(obj_megaflybullet) < 10)
{
    bl = instance_create(((global.idealborder[0] + 10) + random((c_borderwidth(0) - 20))), (global.idealborder[2] - 10), obj_megaflybullet)
    if instance_exists(bl)
        bl.dmg = dmg
}
alarm[0] = rate
