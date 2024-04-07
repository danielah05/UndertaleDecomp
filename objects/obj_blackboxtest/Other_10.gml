for (i = 0; i < 4; i += 1)
{
    gel = instance_create(x, y, obj_blackboxpart)
    gel.image_angle = (image_angle + (i * 90))
}
snd = choose(0, 1, 2)
if (snd == 0)
    snd_play(snd_breaka)
if (snd == 1)
    snd_play(snd_breakb)
if (snd == 2)
    snd_play(snd_breakc)
instance_destroy()
