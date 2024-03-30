if (on == false)
{
    if (heartdraw == true)
    {
        heartdraw = false
        on = true
        clap += 1
    }
}
if (on == false)
{
    if (heartdraw == false)
    {
        snd_play(snd_noise)
        on = true
        heartdraw = true
    }
}
on = false
if (clap > 2)
{
    if (global.battlegroup == 200)
    {
        with (tb)
            instance_destroy()
        instance_destroy()
    }
    else
    {
        instance_create((obj_mainchara.x + 5), (obj_mainchara.y + 17), obj_transheart)
        heartdraw = 0
        obj_mainchara.depth = 100
    }
}
else
    alarm[4] = claptimer
