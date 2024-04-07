sprite_index = global.monstersprite
line = 0
finished = false
ht = sprite_get_height(sprite_index)
wd = sprite_get_width(sprite_index)
myvapor = global.vaporspeed
if (myvapor == 0)
{
    if (ht >= 70 && ht < 180)
        snd_play(snd_vaporized)
}
action_set_alarm(2, 0)
