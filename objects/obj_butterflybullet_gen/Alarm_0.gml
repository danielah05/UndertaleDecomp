if (green == 1)
    j = floor(random(16))
for (i = 0; i < 18; i += 1)
{
    if (green == 1)
        blt = instance_create((global.idealborder[0] + (c_borderwidth(0) / 2)), ((-20 + global.idealborder[2]) + (c_borderheight(0) / 2)), obj_butterflybullet)
    if (green == 0)
        blt = instance_create((global.idealborder[0] + (c_borderwidth(0) / 2)), (global.idealborder[2] + (c_borderheight(0) / 2)), obj_butterflybullet)
    if instance_exists(blt)
    {
        blt.image_index = (i * 0.2)
        blt.siner = (i * 20)
        blt.dmg = dmg
    }
    if (green == 1)
    {
        if (i == j || i == (j + 1))
        {
            blt.green = 1
            if instance_exists(blt)
                blt.sprite_index = spr_butterflybullet_green
        }
    }
}
if (green == 1)
{
    obj_butterflybullet.s2factor = 0
    obj_butterflybullet.sineradd = 6
    sum = scr_monstersum()
    if (sum > 1)
        obj_butterflybullet.sineradd = 4
    if (sum > 2)
    {
        obj_butterflybullet.sineradd = 3
        obj_butterflybullet.sinerfactor += 2
    }
}
if (green == 0)
{
    obj_butterflybullet.sinerfactor += 8
    sum = scr_monstersum()
    if (instance_exists(obj_megaflybulletgen) && sum < 3)
    {
        obj_butterflybullet.y += 15
        obj_butterflybullet.sinerfactor -= 8
    }
    if (sum > 2)
        obj_butterflybullet.sinerfactor += 8
}
