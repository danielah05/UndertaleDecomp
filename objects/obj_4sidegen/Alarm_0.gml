SCR_BORDER_X(floor(random(4)), 0, 0)
x = xx
y = yy
if (bullettype == 0)
{
    SCR_BORDER_X(floor(random(4)), 14, 50)
    x = xx
    y = yy
    iii = instance_create(x, y, blt_clawbullet_white)
    if instance_exists(iii)
    {
        iii.dmg = global.monsteratk[myself]
        with (iii)
            parent = obj_musicobjectparent
    }
}
if (bullettype == 1)
{
    SCR_BORDER_X_X(floor(random(4)), 14, 0)
    x = xx
    y = yy
    iii = instance_create(x, y, blt_4sidebullet)
    if instance_exists(iii)
    {
        iii.dmg = global.monsteratk[myself]
        with (iii)
            parent = obj_musicobjectparent
    }
}
alarm[0] = firingspeed
