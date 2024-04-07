if (type == 0)
    event_inherited()
if (type == 5)
{
    snd_stop(snd_heal_c)
    snd_play(snd_heal_c)
    held = 0
    if (held == 0 && global.my_hp <= 10)
    {
        global.my_hp += 10
        held = 1
    }
    if (held == 0 && global.my_hp <= 20)
    {
        global.my_hp += 6
        held = 1
    }
    if (held == 0 && global.my_hp <= 30)
    {
        global.my_hp += 4
        held = 1
    }
    if (held == 0 && global.my_hp <= 40)
    {
        global.my_hp += 2
        held = 1
    }
    if (held == 0 && global.my_hp <= 50)
    {
        global.my_hp += 1
        held = 1
    }
    instance_destroy()
}
