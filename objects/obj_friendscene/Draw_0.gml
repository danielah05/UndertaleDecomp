if (gowhite == 1)
{
    wht += 0.2
    draw_set_alpha(wht)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
    if (wht > 1.5)
    {
        gowhite = 2
        fmusic = caster_load("music/yourbestfriend_3.ogg")
        al2 = instance_create(410, 0, obj_wrapshock)
        al2.type = 4
        with (al)
            instance_destroy()
        und2 = instance_create(110, 42, obj_wrapshock)
        und2.type = 3
        with (und)
            instance_destroy()
        asg2 = instance_create(-128, 10, obj_wrapshock)
        asg2.type = 5
        with (asg)
            instance_destroy()
        sans2 = instance_create(290, 56, obj_wrapshock)
        sans2.type = 2
        with (sans)
            instance_destroy()
        pap2 = instance_create(513, 0, obj_wrapshock)
        pap2.type = 1
        with (pap)
            instance_destroy()
        tor2 = instance_create(185, 48, obj_wrapshock)
        with (tor)
            instance_destroy()
        with (obj_friendscene_gigavine)
        {
            y -= 100
            shimmy = 1
        }
    }
}
if (gowhite == 2)
{
    wht -= 0.2
    draw_set_alpha(wht)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
    if (wht < 0.04)
    {
        wht = 0
        gowhite = 0
    }
}
if (border_d == 1)
{
    cx = 310
    cx2 = 330
    cy = 290
    cy2 = 310
    obj_heart.x = (cx + 2)
    obj_heart.y = (cy + 2)
    obj_heart.movement = 0
    draw_set_color(c_white)
    cc = 0
    repeat (4)
    {
        draw_rectangle((cx - cc), (cy - cc), (cx2 + cc), (cy2 + cc), true)
        cc += 1
    }
}
if (trickblack == 1)
{
    flowey.depth = (depth - 10)
    draw_set_color(c_black)
    draw_set_alpha(0.5)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
}
if (lastwhite == 1)
{
    view_xview_set(0, ((0 + random((2 + (wht * 2)))) - random((2 - (wht * 2)))))
    view_yview_set(0, ((0 + random((2 + (wht * 2)))) - random((2 - (wht * 2)))))
    wht += 0.003
    draw_set_alpha(wht)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
}
if (leg > 0)
{
    if (leg == 1)
    {
        if (legx > (room_width + 50))
            legx -= 10
        leg_r += 1
    }
    if (leg == 2)
    {
        leg_r += 1
        if (legx < (room_width + 200))
            legx += 10
        else
            leg = 0
    }
    draw_sprite_ext(spr_mettleg2_flip, 0, legx, 180, 2, 2, (sin((leg_r / 4)) * 6), c_white, 1)
}
