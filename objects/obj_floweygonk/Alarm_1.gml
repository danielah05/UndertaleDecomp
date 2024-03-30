gl = 20
snd_play(snd_damage)
if (image_index < 7)
    image_index += 1
else
{
    alarm[0] = -1
    alarm[1] = -1
    alarm[2] = -1
    visible = false
    alarm[3] = 150
}
