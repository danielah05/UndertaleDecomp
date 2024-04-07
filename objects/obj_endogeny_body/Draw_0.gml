xx = (random(shaker) - random(shaker))
yy = (random(shaker) - random(shaker))
if (spared == 0)
{
    draw_sprite_ext(spr_endogeny, 0, (x + xx), (y + yy), 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_endogeny_head, floor(mouth), (x + xx), (y + yy), 2, 2, 0, c_white, image_alpha)
}
if (spared == 1)
{
    draw_sprite_ext(spr_endogeny_2, 0, (x + xx), (y + yy), 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_endogeny_head, 0, (x + xx), (y + yy), 2, 2, 0, c_white, image_alpha)
}
mouth += mouthspeed
if (spared == 1)
{
    mouthspeed = 0
    shaker = 0
}
if (fader == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.02
}
