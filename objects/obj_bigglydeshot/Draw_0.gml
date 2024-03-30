siner += 1
if (speed > 0)
    image_angle += aa
if (breaking == false)
{
    draw_sprite_ext(spr_glydeshot, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, (0.7 + sin((siner / 3))))
    draw_sprite_ext(spr_glydeshot, 1, x, y, image_xscale, image_yscale, (image_angle + 45), image_blend, ((-(sin((siner / 3)))) + 0.7))
}
if (image_xscale < 10)
{
    x += ((sin(siner) * image_xscale) / 2)
    y += ((cos(siner) * image_xscale) / 2)
    if (image_alpha < 1)
        image_alpha += 0.05
    image_xscale += 0.5
    image_yscale += 0.5
}
if (y > (global.idealborder[3] - 20) && breaking == false)
{
    breaking = true
    snd_play(snd_shakerbreaker)
}
if (breaking == true)
    draw_sprite_ext(spr_glydeshot, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (breaking == true)
{
    speed = 0
    tab += 0.1
    if (talpha < 1)
        talpha += 0.2
    image_alpha -= 0.05
    image_xscale += 0.5
    image_yscale += 0.5
    true_tab = 0
    if (talpha >= 1)
        true_tab = (tab - 0.5)
    draw_set_color(c_red)
    scr_setfont(fnt_main)
    draw_set_alpha((talpha - true_tab))
    draw_text_transformed(((((x - 20) - (talpha * 40)) + random(2)) - random(2)), (((((y - 10) + random(2)) - random(2)) - 10) - (talpha * 10)), string_hash_to_newline(phrase), (talpha * 2), (talpha * 2), (1 + talpha))
    draw_set_alpha(1)
    if (image_alpha < -1)
        instance_destroy()
}
if (global.turntimer < 1)
    instance_destroy()
