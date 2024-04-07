if (y > (ystart + 48) && stagetimer == 0)
{
    stagetimer = 1
    snd_play(snd_splash)
    kid = scr_marker(((x + (sprite_width / 2)) + 8), ((y + sprite_height) + 10), spr_waterpillar)
    kid.image_xscale = 4
    kid.image_yscale = 0
    kid.depth = (depth - 10)
}
if (y > (ystart + 55) && stage == 0)
{
    stage = 1
    sprite_index = spr_waterice
    image_speed = 0.2
    gravity = 0
    friction = 0
    vspeed = 0
    hspeed = 0
    hspeed = 1
    friction = -0.1
}
if (stagetimer == 1)
{
    if instance_exists(kid)
    {
        if (kid.image_xscale > 2)
            kid.image_xscale -= 0.4
        kid.image_yscale += 0.2
        if (kid.image_yscale > 0.8)
            kid.image_alpha -= 0.2
        if (kid.image_alpha < 0.2)
        {
            with (kid)
                instance_destroy()
        }
    }
}
if (x > (room_width + 80))
{
    if instance_exists(kid)
    {
        with (kid)
            instance_destroy()
    }
    instance_destroy()
}
