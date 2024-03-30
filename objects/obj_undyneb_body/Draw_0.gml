head.image_index = global.faceemotion
if (movetype == 0)
{
    siner += 1.2
    if (obj_undyneboss.order == -39)
        siner -= 0.2
    if (obj_undyneboss.order == -38)
        siner -= 0.4
    if (obj_undyneboss.order == -37)
        siner -= 0.6
    if (obj_undyneboss.order == -36)
        siner -= 0.8
    if (obj_undyneboss.order == -35 || obj_undyneboss.order == -35)
        siner -= 1
    legs.image_index = 0
    ydiff = (y - ystart)
    xdiff = (x - xstart)
    larm.depth = (depth + 5)
    hair.y = ((hair.ystart + (sin((siner / 6)) * 4)) + ydiff)
    head.y = ((head.ystart + (sin((siner / 6)) * 2)) + ydiff)
    armor.y = ((armor.ystart + (sin((siner / 6)) * 4)) + ydiff)
    pants.y = ((pants.ystart + (sin((siner / 6)) * 2)) + ydiff)
    larm.y = ((larm.ystart + (sin((siner / 6)) * 5)) + ydiff)
    larm.x = ((larm.xstart + (sin((siner / 6)) * 5)) + xdiff)
    rarm.y = (((rarm.ystart + (sin((siner / 6)) * 6)) + (sin((siner / 3)) * 2)) + ydiff)
    rarm.x = ((rarm.xstart - (sin((siner / 3)) * 2)) + xdiff)
    legs.y = (legs.ystart + ydiff)
    if (rarm.image_angle > 0)
        rarm.image_angle -= 15
    if (larm.image_angle < 0)
        larm.image_angle += 15
}
else
{
    ydiff = (y - ystart)
    xdiff = (x - xstart)
    for (i = 0; i < 3; i += 1)
    {
        part[i].x = (part[i].xstart + xdiff)
        part[i].y = (part[i].ystart + ydiff)
    }
    part[4].x = (part[4].xstart + xdiff)
    part[4].y = (part[4].ystart + ydiff)
    if (y <= ystart)
        air += 1
    larm.image_angle += larm.vspeed
    rarm.image_angle -= rarm.vspeed
}
if (movetype == 1 && vspeed > 0 && y > (ystart - 8))
{
    y = ystart
    for (i = 0; i < 7; i += 1)
    {
        part[i].x = (part[i].xstart + xdiff)
        part[i].y = (part[i].ystart + ydiff)
    }
    legs.gravity = 0
    legs.vspeed = 0
    legs.hspeed = 0
    legs.gravity = 0
    legs.image_index = 0
    larm.gravity = 0
    larm.vspeed = 0
    larm.hspeed = 0
    larm.gravity = 0
    larm.image_index = 0
    rarm.gravity = 0
    rarm.vspeed = 0
    rarm.hspeed = 0
    rarm.gravity = 0
    rarm.image_index = 0
    vspeed = 0
    hspeed = 0
    gravity = 0
    if (jumpno <= 2)
        alarm[0] = 4
    else
        movetype = 0
}
if (movetype == 2)
{
    if (slashno == 0 && larm.image_angle > -84)
        larm.image_angle -= 25
    if (slashno == 0 && larm.image_angle <= -84)
    {
        larm.image_angle = -84
        alarm[1] = 5
        slashno = 0.1
    }
    if (slashno == 1.1)
    {
        slashno = 1
        alarm[1] = 2
    }
    if (slashno == 1)
    {
        larm.depth = 4
        larm.image_angle += 55
    }
    if (slashno == 2)
    {
        larm.image_angle = 66
        slash = instance_create((larm.x - 180), (larm.y + 20), obj_npc_marker)
        slash.sprite_index = spr_undyneb_smear
        slash.visible = true
        slash.image_alpha = 1
        slashno = 3
    }
    if (slashno == 3)
    {
        slash.image_alpha -= 0.1
        larm.image_angle += 0.5
        if (larm.image_angle > 70)
        {
            with (slash)
                instance_destroy()
            slashno = 4
            alarm[1] = 3
        }
    }
    if (slashno == 5)
    {
        larm.image_angle -= 15
        if (larm.image_angle <= 6)
        {
            larm.image_angle = 0
            slashno = 0
            movetype = 0
        }
    }
}
if (fadeout == 1)
{
    melter.image_index = 0
    image_alpha -= 0.05
    for (i = 0; i < 7; i += 1)
        part[i].image_alpha -= 0.2
    with (melter)
        image_alpha += 0.2
    if (image_alpha <= 0)
        instance_destroy()
}
