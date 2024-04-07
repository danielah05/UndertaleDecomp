timer += 1
siner += 1
if (timer < 15)
    image_xscale = (cos((siner / 2)) * 2)
if (timer == 15)
{
    snd_play(snd_punchstrong)
    if (crit == 1)
        snd_play(snd_saber3)
    image_speed = 1
    image_xscale = 0.5
    image_yscale = 0.5
    sprite_index = spr_frypan_impact
}
if (timer > 15)
{
    image_xscale += 0.5
    image_yscale += 0.5
    if (image_xscale > 2)
        image_alpha -= 0.2
    if (image_alpha < 0.1)
    {
        caster_free(bookspin)
        instance_destroy()
    }
}
