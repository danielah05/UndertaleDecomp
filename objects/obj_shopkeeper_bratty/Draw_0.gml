with (obj_shop3)
{
    if (instance_exists(brattywriter) && obj_shopkeeper_bratty.face == 0)
    {
        if (brattywriter.halt == 0)
            obj_shopkeeper_bratty.banim += 0.25
        else
            obj_shopkeeper_bratty.banim = 0
    }
    else
        obj_shopkeeper_bratty.banim = 0
}
draw_sprite(sprite_index, banim, (x + floor(bxx)), (y + floor(byy)))
if (face > 0)
    draw_sprite(spr_brattyface, face, ((x + 30) + floor(bxx)), ((y + 20) + floor(byy)))
armexp = FL_AnimationIndex
if (armexp == 0)
{
    face = 0
    idealarmx1 = (x + 35)
    idealarmy1 = 100
    idealarmx2 = (x + 18)
    idealarmy2 = 102
    yadjust = 8
    xadjust = 6
    if (abs(xx) > 0.1)
        xx /= 1.5
    if (abs(yy) > 0.1)
        yy /= 1.5
    if (abs(xx) < 0.1 && abs(yy) < 0.1)
        armsiner = 0
    if (abs(bxx) > 0.1)
        bxx /= 1.5
    if (abs(byy) > 0.1)
        byy /= 1.5
}
if (armexp == 1)
{
    face = 4
    arm = 2
    idealarmx1 = (x + 80)
    idealarmy1 = (y + 50)
    idealarmy2 = 130
    armsiner += 1
    yy = (cos(armsiner) * 1)
    byy = (sin(armsiner) * 2)
}
if (armexp == 2)
{
    face = 3
    idealarmx1 = (x + 35)
    idealarmy1 = 100
    idealarmx2 = (x + 18)
    idealarmy2 = 102
    yadjust = 8
    xadjust = 6
    if (abs(xx) > 0.1)
        xx /= 1.5
    if (abs(yy) > 0.1)
        yy /= 1.5
    if (abs(xx) < 0.1 && abs(yy) < 0.1)
        armsiner = 0
    if (abs(bxx) > 0.1)
        bxx /= 1.5
    if (abs(byy) > 0.1)
        byy /= 1.5
}
if (armexp == 3)
{
    face = 0
    arm = 0
    yadjust = 5
    idealarmx1 = (x + 70)
    idealarmy1 = (y + 70)
    idealarmx2 = (x + 47)
    idealarmy2 = (y + 73)
    armsiner += 1
    xx = (sin((armsiner / 4)) * 1)
    yy = (cos((armsiner / 4)) * 1)
}
if (armexp == 4)
{
    face = 5
    idealarmx1 = (x + 35)
    idealarmy1 = 100
    idealarmx2 = (x + 18)
    idealarmy2 = 102
    yadjust = 8
    xadjust = 6
    if (abs(xx) > 0.1)
        xx /= 1.5
    if (abs(yy) > 0.1)
        yy /= 1.5
    if (abs(xx) < 0.1 && abs(yy) < 0.1)
        armsiner = 0
    if (abs(bxx) > 0.1)
        bxx /= 1.5
    if (abs(byy) > 0.1)
        byy /= 1.5
}
if (armexp == 5)
{
    face = 1
    idealarmx1 = (x + 35)
    idealarmy1 = 90
    idealarmx2 = (x + 18)
    idealarmy2 = 92
    yadjust = 8
    xadjust = 6
    if (abs(xx) > 0.1)
        xx /= 1.5
    if (abs(yy) > 0.1)
        yy /= 1.5
    if (abs(xx) < 0.1 && abs(yy) < 0.1)
        armsiner = 0
    if (abs(bxx) > 0.1)
        bxx /= 1.5
    if (abs(byy) > 0.1)
        byy /= 1.5
}
if (armexp == 6)
{
    face = 2
    idealarmx1 = (x + 35)
    idealarmy1 = 80
    idealarmx2 = (x + 18)
    idealarmy2 = 82
    yadjust = 8
    xadjust = 6
    armsiner += 1
    xx = (sin((armsiner / 4)) * 2)
    yy = (cos((armsiner / 4)) * 2)
}
draw_sprite(spr_brattyarm_l, arm, (armx2 + xx), (army2 + yy))
draw_sprite(spr_brattyarm_r, arm, (armx1 + xx), (army1 + yy))
if (armx1 < idealarmx1)
    armx1 += xadjust
if (armx1 > idealarmx1)
    armx1 -= xadjust
if (armx2 < idealarmx2)
    armx2 += xadjust
if (armx2 > idealarmx2)
    armx2 -= xadjust
if (army1 < idealarmy1)
    army1 += yadjust
if (army2 < idealarmy2)
    army2 += yadjust
if (army1 > idealarmy1)
    army1 -= yadjust
if (army2 > idealarmy2)
    army2 -= yadjust
if (abs((armx1 - idealarmx1)) < xadjust)
    armx1 = idealarmx1
if (abs((armx2 - idealarmx2)) < xadjust)
    armx2 = idealarmx2
if (abs((army1 - idealarmy1)) < yadjust)
    army1 = idealarmy1
if (abs((army2 - idealarmy2)) < yadjust)
    army2 = idealarmy2
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    if keyboard_check_pressed(vk_space)
    {
        armexp += 1
        if (armexp == 7)
            armexp = 0
    }
}
if (global.debug == true)
{
    if keyboard_check_pressed(ord("B"))
        FL_BurgerPantsGirlsConvoCounter += 1
}
