if (sterile == 0)
{
    iii = instance_create(xstart, ystart, blt_hoopbullet1)
    iii.dmg = dmg
    iii.bullettype = 2
    iii.gravity = gravitystart
    iii.gravity_direction = gravity_direction
    iii.sterile = 1
}
