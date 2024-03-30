if (pause == 0)
    siner += 1
else
    siner = 0
if (burston == 1)
{
    draw_sprite_ext(spr_mneo_burst, 0, (x - 24), ((y + 18) + (sin((siner / 3)) * 1)), -2, 2, (sin((siner / 6)) * 2), c_white, ((abs(sin((siner * 0.3))) * 0.5) + 0.4))
    draw_sprite_ext(spr_mneo_burst, 0, (x + 28), ((y + 18) + (sin((siner / 3)) * 1)), 2, 2, ((-(sin((siner / 6)))) * 2), c_white, ((abs(sin((siner * 0.3))) * 0.5) + 0.4))
}
draw_sprite_ext(spr_mneo_legs, 0, x, ((y + 84) + 112), 2, (2 - (sin((siner / 3)) * 0.05)), 0, c_white, 1)
draw_sprite_ext(spr_mneo_armr, 0, ((x + 40) + (sin((siner / 3)) * 2)), (y + 40), 2, 2, (sin((siner / 6)) * 2), c_white, 1)
draw_sprite_ext(spr_mneo_arml, 0, ((x - 26) - (sin((siner / 3)) * 2)), (y + 40), 2, 2, ((-(sin((siner / 6)))) * 2), c_white, 1)
draw_sprite_ext(spr_mneo_body, 0, (x + 4), ((y + 36) + (sin((siner / 3)) * 2)), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_mneo_face, global.faceemotion, x, (y + (sin((siner / 3)) * 3)), 2, 2, 0, c_white, 1)
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
if (shake == 1)
{
    x = ((xnow + random(2)) - random(2))
    y = ((ynow + random(2)) - random(2))
}
