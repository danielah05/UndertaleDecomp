if (active == true)
{
    snd_play(snd_noise)
    hspeed = myh
    vspeed = myv
    gravity = 0.5
    active = 2
}
if (active == 2)
{
    image_angle -= mya
    if (y > (ystart + 55))
    {
        active = 3
        speed = 0
        gravity = 0
        sprite_index = breaksprite
        depth = 600000
        snd_play(snd_glassbreak)
    }
}
