flasher += 1
if (drawblack == 1)
    drawblack = 0
else
    drawblack = 1
alarm[2] = 2
snd_play(snd_noise)
if (flasher > 5 && drawblack == 0)
{
    alarm[2] = -1
    event_user(0)
}
