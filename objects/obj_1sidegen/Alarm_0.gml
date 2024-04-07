SCR_BORDER(0, 6)
x = xx
y = yy
if (bullettype == 0)
    SCR_DIRECT(2.5, 0.2, 0, 0, 0, 0, 0, 0, 0, 174)
if (bullettype == 1)
{
    iii = instance_create(x, y, blt_flybullet)
    if instance_exists(iii)
        iii.dmg = global.monsteratk[myself]
}
if (bullettype == 2)
{
    iii = instance_create(x, y, blt_splinterbig)
    if instance_exists(iii)
        iii.dmg = global.monsteratk[myself]
}
if (bullettype == 3)
{
    iii = instance_create(x, y, blt_pollendrop)
    if instance_exists(iii)
        iii.dmg = global.monsteratk[myself]
}
if (bullettype == 4)
{
    iii = instance_create(global.idealborder[0], ((global.idealborder[2] + round(random(((global.idealborder[3] - global.idealborder[2]) - 60)))) + 30), blt_roachbullet)
    if instance_exists(iii)
        iii.dmg = global.monsteratk[myself]
    iii = instance_create((global.idealborder[1] - 4), ((global.idealborder[2] + round(random(((global.idealborder[3] - global.idealborder[2]) - 60)))) + 30), blt_roachbullet)
    if instance_exists(iii)
        iii.dmg = global.monsteratk[myself]
}
if (bullettype == 5)
{
    num += 1
    SCR_BORDER(0, 40)
    x -= 20
    y += 5
    iii = instance_create(x, y, blt_vegbullet)
    sum = scr_monstersum()
    if instance_exists(iii)
    {
        if (num == (4 - sum) && specgreen == 1)
        {
            iii.green = 1
            iii.image_blend = c_lime
        }
        iii.dmg = global.monsteratk[myself]
    }
}
if (bullettype == 6)
{
    num += 1
    SCR_BORDER(0, 40)
    x -= 20
    y += 5
    iii = instance_create(x, y, blt_gravbullet)
    if instance_exists(iii)
    {
        if (instance_exists(obj_parsnik) == false)
        {
            if (num == 4 && specgreen == 1)
            {
                iii.green = 1
                iii.image_blend = c_lime
            }
        }
        else if (num == 8 && specgreen == 1)
        {
            iii.green = 1
            iii.image_blend = c_lime
        }
        iii.dmg = global.monsteratk[myself]
    }
}
if (bullettype == 7)
{
    x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 3)
    y = (global.idealborder[2] - 25)
    iii = instance_create(x, y, blt_firehelix1)
    if instance_exists(iii)
    {
        iii.dmg = global.monsteratk[myself]
        if (global.hp < 8)
            iii.dmg = 2
        if (global.hp < 6)
            iii.dmg = 1
    }
    if (global.hp <= 2)
        global.turntimer = -100
}
if (bullettype == 8)
{
    x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 3)
    y = (global.idealborder[2] + 5)
    iii = instance_create(x, y, blt_minihelix)
    if instance_exists(iii)
    {
        iii.dmg = global.monsteratk[myself]
        if (global.hp < 8)
            iii.dmg = 2
        if (global.hp < 6)
            iii.dmg = 1
    }
    if (global.hp <= 2)
        global.turntimer = -100
}
if (bullettype == 9)
{
    SCR_BORDER(0, 80)
    x -= 40
    y -= 20
    iii = instance_create(x, y, blt_avoidfire)
    if instance_exists(iii)
        iii.dmg = 1
}
if (bullettype == 10)
{
    x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 3)
    y = (global.idealborder[2] - 25)
    iii = instance_create(x, y, blt_firehelix1)
    if instance_exists(iii)
    {
        iii.dmg = global.monsteratk[myself]
        if (global.hp < 8)
            iii.dmg = 2
        if (global.hp < 6)
            iii.dmg = 1
    }
    if (global.hp <= 2)
        global.turntimer = -100
    x = (global.idealborder[0] + 2)
    y = (global.idealborder[2] + 90)
    iiii = instance_create(x, y, blt_floatfire)
    if instance_exists(iiii)
    {
        iiii.dmg = global.monsteratk[myself]
        if (global.hp < 8)
            iiii.dmg = 2
        if (global.hp < 6)
            iiii.dmg = 1
    }
    x = (global.idealborder[1] - 18)
    iiiii = instance_create(x, y, blt_floatfire)
    if instance_exists(iiiii)
    {
        iiiii.dmg = global.monsteratk[myself]
        if (global.hp < 8)
            iiiii.dmg = 2
        if (global.hp < 6)
            iiiii.dmg = 1
    }
}
if (bullettype == 11)
{
    SCR_BORDER_X(1, 30, 30)
    gen = instance_create(x, y, blt_hat)
    if instance_exists(gen)
        gen.dmg = global.monsteratk[myself]
}
alarm[0] = firingspeed
