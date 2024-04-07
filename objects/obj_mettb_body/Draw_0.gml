if (noleg == 0)
{
    if (legr == 0)
    {
        legrsprite = spr_mettleg1
        xoffr = -14
        yoffr = 10
        legrh = 36
    }
    if (legr == 1)
    {
        legrsprite = spr_mettleg2
        xoffr = -16
        yoffr = 6
        legrh = 8
    }
    if (legr == 2)
    {
        legrsprite = spr_mettleg3
        xoffr = -10
        yoffr = 14
        legrh = 60
    }
    if (legr == 3)
    {
        legrsprite = spr_mettleg4
        xoffr = -10
        yoffr = 14
        legrh = 30
    }
    if (legr == 4)
    {
        legrsprite = spr_mettleg5
        xoffr = -18
        yoffr = 2
        legrh = 42
    }
    if (legr == 9)
    {
        legrsprite = spr_mettleg2_flip
        xoffr = 20
        yoffr = 6
        legrh = 8
    }
    if (legr == 10)
    {
        legrsprite = spr_mettleg2_flip_v
        xoffr = 15
        yoffr = 2
        legrh = 0
    }
    if (legl == 0)
    {
        leglsprite = spr_mettleg1
        xoffl = -14
        yoffl = 10
        leglh = 36
    }
    if (legl == 1)
    {
        leglsprite = spr_mettleg2
        xoffl = -16
        yoffl = 6
        leglh = 8
    }
    if (legl == 2)
    {
        leglsprite = spr_mettleg3
        xoffl = -10
        yoffl = 14
        leglh = 60
    }
    if (legl == 3)
    {
        leglsprite = spr_mettleg4
        xoffl = -10
        yoffl = 14
        leglh = 30
    }
    if (legl == 4)
    {
        leglsprite = spr_mettleg5
        xoffl = -18
        yoffl = 2
        leglh = 42
    }
    if (legl == 9)
    {
        leglsprite = spr_mettleg2_unflip
        xoffl = -5
        yoffl = 2
        leglh = 6
    }
    if (legl == 10)
    {
        leglsprite = spr_mettleg2_unflip_v
        xoffl = 0
        yoffl = 5
        leglh = 2
    }
}
if (arml == 0)
    armlsprite = spr_mettarm1
if (arml == 1)
    armlsprite = spr_mettarm2
if (arml == 2)
    armlsprite = spr_mettarm3
if (arml == 3)
    armlsprite = spr_mettarm4
if (arml == 4)
    armlsprite = spr_mettarm5
if (arml == 5)
    armlsprite = spr_mettarm6
if (arml == 6)
    armlsprite = spr_mettarm7
if (arml == 7)
    armlsprite = spr_mettarm8
if (armr == 0)
    armrsprite = spr_mettarm1
if (armr == 1)
    armrsprite = spr_mettarm2
if (armr == 2)
    armrsprite = spr_mettarm3
if (armr == 3)
    armrsprite = spr_mettarm4
if (armr == 4)
    armrsprite = spr_mettarm5
if (armr == 5)
    armrsprite = spr_mettarm6
if (armr == 6)
    armrsprite = spr_mettarm7
if (armr == 7)
    armrsprite = spr_mettarm8
if (legl != 9 && legr != 9 && legl != 10 && legr != 10)
{
    offangle = 0
    if (leglh > 10 || (legrh > 10 && sineron == 1))
        siner += 1
    if (sineron == 1)
    {
        rsin += 1
        lsin += 1
    }
    if (leglh > legrh)
    {
        legh = (leglh * 2)
        lsin = 0
    }
    else
    {
        legh = (legrh * 2)
        rsin = 0
    }
    if (abs((leglh - legrh)) < 5)
    {
        lsin = 0
        rsin = 0
    }
}
else
{
    if (leglh > legrh)
        legh = (leglh * 2)
    else
        legh = (legrh * 2)
    if (legl == 10)
        lsin = 0
    if (sineron == 1)
    {
        siner += 1
        rsin += 1
        lsin += 1
    }
    offangle = 10
}
ds1 = (random((dsf * 2)) - dsf)
ds2 = (random((dsf * 2)) - dsf)
if (noleg == 0)
{
    draw_sprite_ext(legrsprite, 0, ((x + 90) + xoffr), ((((y + 120) + yoffr) - legh) - (sin((siner / 2)) * 0.05)), 2, (2 - (sin((siner / 3.5)) * 0.05)), ((sin((rsin / 7)) * 10) - offangle), myblend, myalpha)
    draw_sprite_ext(leglsprite, 0, (((x + 90) - xoffl) - 32), ((((y + 120) + yoffl) - legh) - (sin((siner / 2)) * 0.05)), -2, (2 - (sin((siner / 3.5)) * 0.05)), (sin((lsin / 7)) * 10), myblend, myalpha)
}
if (noarm == 0)
{
    if (arml != 5)
        draw_sprite_ext(armlsprite, 0, ((x + 36) + sin((siner / 3.5))), (((y - legh) + 80) + (cos((siner / 3.5)) * 2)), 2, 2, 0, myblend, myalpha)
    if (armr != 5)
        draw_sprite_ext(armrsprite, 0, ((x + 110) + sin((siner / 3.5))), (((y - legh) + 80) + (cos((siner / 3.5)) * 2)), -2, 2, 0, myblend, myalpha)
}
if (bodyopen == 1)
{
    if (bodyimg < 5)
        bodyimg += 0.25
}
else if (bodyimg > 0)
    bodyimg -= 0.25
draw_sprite_ext(spr_mettb_upperbody, bodyimg, (((x + 72) + sin((siner / 3.5))) + ds1), ((((y - legh) + 134) + (cos((siner / 3.5)) * 2)) + ds2), 2, 2, 0, myblend, myalpha)
if (instance_exists(obj_mettheart_parent) == false && instance_exists(obj_mettheart_burst) == false && heartdead == 0)
    draw_sprite_ext(spr_mettb_upperbodyheart, 0, ((((x + 72) + sin((siner / 3.5))) + 66) + ds1), (((((y - legh) + 134) + (cos((siner / 3.5)) * 2)) + 108) + ds2), 2, 2, 0, myblend, myalpha)
if (endface == 0)
{
    if (hurt == false && face_set == 0)
        draw_sprite_ext(spr_mettface1, faceno, (x + 68), (((y + 40) - legh) + (cos((siner / 3.5)) * 3)), 2, 2, 0, myblend, myalpha)
    if (hurt == false && face_set == 1)
        draw_sprite_ext(spr_mettface_defeated, global.faceemotion, ((x + 68) - ds1), ((((y + 40) - legh) + (cos((siner / 3.5)) * 3)) - ds2), 2, 2, 0, myblend, myalpha)
    if (hurt == true)
        draw_sprite_ext(spr_mettface_hurt, hurtface, (x + 68), (((y + 40) - legh) + (cos((siner / 3.5)) * 3)), 2, 2, 0, myblend, myalpha)
    if (hurt == 2)
        draw_sprite_ext(spr_mettface_defeated, global.faceemotion, ((x + 68) - ds1), ((((y + 40) - legh) + (cos((siner / 3.5)) * 3)) - ds2), 2, 2, 0, myblend, myalpha)
}
else
    draw_sprite_ext(spr_mettface_general, global.faceemotion, (x + 68), (((y + 40) - legh) + (cos((siner / 3.5)) * 3)), 2, 2, 0, myblend, myalpha)
if (noarm == 0)
{
    if (arml == 5)
        draw_sprite_ext(armlsprite, 0, ((x + 42) + sin((siner / 3.5))), (((y - legh) + 80) + (cos((siner / 3.5)) * 2)), 2, 2, 0, myblend, myalpha)
    if (armr == 5)
        draw_sprite_ext(armrsprite, 0, ((x + 110) + sin((siner / 3.5))), (((y - legh) + 80) + (cos((siner / 3.5)) * 2)), -2, 2, 0, myblend, myalpha)
}
if (pause == 1)
{
    if (hurt == false)
    {
        hurt = true
        hurtface = choose(0, 1)
    }
}
if (pause == 2)
{
    if (hurt == false)
    {
        hurt = true
        hurtface = 2
    }
}
if (pause == 0)
    hurt = false
if (sineron == 1)
{
    y = (obj_uborder.y - 136)
    if (global.idealborder[2] < 250)
    {
        if (legmode == 0)
        {
            depth = 0
            legmode = 1
            legl = choose(9, 10)
            legr = legl
        }
    }
    else if (legmode == 1)
    {
        depth = 10
        legmode = 0
        event_user(0)
    }
}
if (fadewhite == 1)
{
    depth = -999999
    whiteval += 0.2
    draw_set_alpha(whiteval)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    if (whiteval > 10)
    {
        draw_set_alpha((-1 + (whiteval / 10)))
        draw_set_color(c_black)
        ossafe_fill_rectangle(-10, -10, 999, 999)
    }
    if (whiteval == 10 && FL_KilledMettaton == 1)
        snd_play(snd_vaporized)
    draw_set_alpha(1)
    if (whiteval >= 44)
    {
        instance_create(0, 0, obj_persistentfader)
        do_room_goto = true
    }
}
if (noleg == 1)
{
    if (legrh > 6)
        legrh -= 4
    else
        legrh = 6
    if (leglh > 6)
        leglh -= 4
    else
        leglh = 6
    if (legh > 6)
        legh -= 4
    else
        legh = 6
}
