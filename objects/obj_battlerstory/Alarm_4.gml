if (on == 0)
{
    if (heartdraw == 1)
    {
        heartdraw = 0
        on = 1
        clap += 1
    }
}
if (on == 0)
{
    if (heartdraw == 0)
    {
        snd_play(snd_noise)
        on = 1
        heartdraw = 1
    }
}
on = 0
if (clap > 2)
{
    j = instance_create((obj_mainchara.x + 5), (obj_mainchara.y + 17), obj_transheart)
    j.mode = 1
    heartdraw = 0
    obj_mainchara.depth = 100
}
else
    alarm[4] = 2
