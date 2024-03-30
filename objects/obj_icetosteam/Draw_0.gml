draw_sprite_ext(spr_iceblock_bottom, 0, x, y, image_xscale, image_yscale, 0, c_white, ((1 - whitepro) * image_alpha))
draw_sprite_ext(spr_iceblock_white, 0, x, y, image_xscale, image_yscale, 0, c_white, (whitepro * image_alpha))
timer += 1
if (timer < 30)
    x += 3
if (timer == 30)
    gravity = 0.3
if (timer == 52)
{
    snd_play(snd_vaporized)
    gravity = 0
    vspeed = 0
}
if (timer >= 53)
{
    instance_create(((x - 19) + random(38)), y, obj_steamplume2)
    whitepro += 0.05
    image_yscale -= 0.03
    y += 0.5
    if (image_yscale < 0.3)
        image_alpha -= 0.1
}
if (image_yscale < 0.01)
    d = 1
if (timer >= 90)
    d = 1
if (d == 1)
{
    x = -30
    y = (ystart + floor(random(22)))
    whitepro = 0
    timer = -10
    d = 0
    image_xscale = 1
    image_yscale = 1
    whitepro = 0
    gravity = 0
    hspeed = 0
    vspeed = 0
    image_alpha = 1
}
