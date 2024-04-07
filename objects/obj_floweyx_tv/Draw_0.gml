if (tvmode == 0)
{
    draw_sprite_ext(spr_tvinside_old, anim, ((x + 20) + random(4)), ((y + 50) + random(4)), ((size + 0.9) + random(0.1)), ((size + random(0.1)) + 0.4), 0, c_white, 1)
    anim += animspeed
    if (anim > (animchoice + 1))
        animspeed = (-animspeed)
    if (anim < (animchoice - 1))
        animspeed = (-animspeed)
    animtimer += 1
    if (animtimer > 100)
    {
        draw_sprite_ext(spr_noise, random(3), ((x + 20) + random(4)), ((y + 50) + random(4)), ((size + 0.8) + random(0.1)), ((size + random(0.1)) + 0.4), 0, c_white, 1)
        animchoice = round(random(100))
        anim = animchoice
        if (animtimer > 106)
            animtimer = 0
    }
    draw_sprite(sprite_index, image_index, x, (y + (sin((siner / 3)) * 1)))
    siner += 1
}
if (tvmode == 1)
{
    alarm[1] = -1
    draw_set_color(c_black)
    ossafe_fill_rectangle((x + 20), (y + 10), (x + 160), (y + 140))
    draw_sprite_ext(spr_tv_warning, 0, (x + 20), (y + 50), 1, 1, 0, c_white, (0.8 + sin((siner / 2))))
    draw_sprite(spr_allsoul, global.soul_rescue, ((x + 80) + random(3)), ((y + 110) + random(3)))
    draw_sprite(sprite_index, image_index, x, (y + (sin((siner / 3)) * 1)))
    siner += 1
}
if (tvmode == 2)
{
    alarm[1] = -1
    draw_sprite_ext(spr_noise, random(3), (x + 26), (y + 50), 1.2, 1, 0, c_white, 1)
    draw_sprite(sprite_index, image_index, x, (y + (sin((siner / 3)) * 1)))
}
if (tvmode == 3)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((x + 20), (y + 10), (x + 160), (y + 140))
    siner += 1
    draw_sprite(spr_allsoul, global.soul_rescue, (x + 80), ((y + 90) + (sin((siner / 8)) * 3)))
    draw_sprite(sprite_index, image_index, x, (y + (sin((siner / 3)) * 1)))
}
if (tvmode == 4)
{
    draw_sprite_ext(spr_tvinside_old, tt, ((x + 20) + random(4)), ((y + 50) + random(4)), ((size + 0.9) + random(0.1)), ((size + random(0.1)) + 0.4), 0, c_white, 1)
    draw_sprite(sprite_index, image_index, x, (y + (sin((siner / 3)) * 1)))
}
if (tvmode == 5)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    draw_sprite(sprite_index, image_index, x, y)
}
if (tvmode == 10)
{
    draw_sprite_ext(spr_tv_exface, tt, (x + 13), (y + 50), 1, 1, 0, c_white, 1)
    draw_sprite(sprite_index, image_index, x, y)
}
if (tvmode == 11)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    draw_sprite_ext(spr_tv_floweyface, floor(global.faceemotion), ((x + 21) + random(2)), ((y + 56) + random(2)), (2.9 + random(0.1)), (2.9 + random(0.1)), 0, c_white, 1)
    draw_sprite(sprite_index, image_index, x, y)
}
if (tvmode == 12)
{
    draw_sprite_ext(spr_tvinside_old, 35, ((x + 20) + random(4)), ((y + 50) + random(4)), ((size + 0.9) + random(0.1)), ((size + random(0.1)) + 0.4), 0, c_white, 1)
    anim4 = 0
    draw_sprite(sprite_index, image_index, x, (y + (sin((siner / 3)) * 1)))
}
if (tvmode == 13)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    draw_sprite_ext(spr_tvinside_old, 35, ((x + 20) + random(4)), ((y + 50) + random(4)), ((size + 0.9) + random(0.1)), ((size + random(0.1)) + 0.4), 0, c_white, (1 - anim4))
    anim4 += 0.01
    draw_sprite(sprite_index, image_index, x, (y + (sin((siner / 3)) * 1)))
    siner += 1
}
if (tvmode == 18)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    siner += 1
    draw_sprite(sprite_index, image_index, x, y)
    draw_sprite_ext(spr_tv_floweyx_laugh, 0, (x + 25), (y + 65), 1.3, 1, 0, c_white, 1)
}
if (tvmode == 19)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    siner += 1
    draw_sprite_ext(spr_tv_floweyx_laugh, floor(anim4), (x + 25), (y + 65), 1.3, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, 1)
    anim5 += 0.5
    if (anim4 < 6)
        anim4 += 0.5
    if (anim5 > 22)
    {
        if (anim4 < 15)
            anim4 += 0.5
    }
}
if (tvmode == 20)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    siner += 1
    draw_sprite(sprite_index, image_index, x, (y + (sin(((siner * pi) / 2)) * 2)))
    draw_sprite_ext(spr_tv_floweyx_laugh_o, floor(anim3), (x + 25), (y + 65), 1.3, 1, 0, c_white, 1)
    anim3 += 0.5
}
if (tvmode == 21)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    siner += 1
    draw_sprite(sprite_index, image_index, x, (y + (sin((siner / 3)) * 2)))
    draw_sprite_ext(spr_tv_floweyx_smile, 0, (x + 25), ((y + 65) + sin((siner / 3))), 1.3, 1, 0, c_white, 1)
}
if (tvmode == 22)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    siner += 1
    draw_sprite(sprite_index, image_index, x, y)
    draw_sprite_ext(spr_tv_floweyx_laugh_piss, global.faceemotion, ((x + 25) + random(2)), ((y + 65) + random(2)), 1.3, 1, 0, c_white, 1)
}
if (tvmode == 24)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    draw_set_color(c_white)
    draw_set_alpha(((anim6 - 30) / 30))
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    draw_set_alpha(1)
    anim6 += 1
    draw_sprite_ext(spr_tv_floweyx_laugh, 0, (x + 25), (y + 65), 1.3, 1, 0, c_white, ((anim6 - 30) / 30))
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, 1)
}
if (tvmode == 25)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, 1)
}
if (tvmode == 26)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    draw_set_color(c_white)
    draw_set_alpha(((anim6 - 11) / 10))
    ossafe_fill_rectangle((x + 20), (y + 50), (x + 160), (y + 140))
    draw_set_alpha(1)
    anim6 += 1
    draw_sprite_ext(spr_tv_floweyx_laugh, 11, (x + 25), (y + 65), 1.3, 1, 0, c_white, ((anim6 - 11) / 10))
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, 1)
}
if (tvmode == 99)
{
    draw_sprite_ext(spr_tvinside_old, anim, ((x + 20) + random(4)), ((y + 50) + random(4)), ((size + 0.9) + random(0.1)), ((size + random(0.1)) + 0.4), 0, c_white, 1)
    draw_sprite(sprite_index, image_index, ((x + random(3)) - random(3)), ((y + random(3)) - random(3)))
    anim += 0.5
}
if (tvmode == 100)
{
    draw_sprite_ext(spr_tvinside_old, anim, ((x + 20) + random(4)), ((y + 50) + random(4)), ((size + 0.9) + random(0.1)), ((size + random(0.1)) + 0.4), 0, c_white, 1)
    draw_sprite(sprite_index, image_index, ((x + random(5)) - random(5)), ((y + random(5)) - random(5)))
    anim += 1
}
if (overnoiser > 0)
{
    draw_sprite_ext(spr_noise, random(3), (x + 26), (y + 50), 1.2, 1, 0, c_white, 1)
    draw_sprite(sprite_index, image_index, x, y)
    overnoiser -= 1
}
if (shudder > 0)
{
    shuddercounter += 1
    if (shuddercounter > 0)
    {
        if (flasheron == 1)
        {
            draw_sprite(spr_floweyx_tv_bright, image_index, x, (y + (sin((siner / 3)) * 1)))
            flasheron = 0
        }
        else
            flasheron = 1
        x = ((remx + random(shudder)) - random(shudder))
        y = ((ystart + random(shudder)) - random(shudder))
        shudder -= 2
        shuddercounter = 0
    }
    if (shudder < 1)
        shudder = 0
}
