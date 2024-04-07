if (global.my_inv < 0)
{
    global.my_inv = 20
    hitted = 0
    snd_play(snd_hurt1_c)
    instance_create(0, 0, obj_vsflowey_shaker)
    if (global.battlephase < 6)
    {
        if (global.my_hp > 40 && hitted == 0)
        {
            global.my_hp -= 12
            hitted = 1
        }
        if (global.my_hp > 30 && hitted == 0)
        {
            global.my_hp -= 10
            hitted = 1
        }
    }
    else
    {
        if (global.my_hp > 40 && hitted == 0)
        {
            global.my_hp -= 8
            hitted = 1
        }
        if (global.my_hp > 30 && hitted == 0)
        {
            global.my_hp -= 7
            hitted = 1
        }
    }
    if (global.my_hp > 20 && hitted == 0)
    {
        global.my_hp -= 6
        hitted = 1
    }
    if (global.my_hp > 12 && hitted == 0)
    {
        global.my_hp -= 4
        hitted = 1
    }
    if (global.my_hp > 5 && hitted == 0)
    {
        global.my_hp -= 2
        hitted = 1
    }
    if (global.my_hp > 0 && hitted == 0)
    {
        global.my_hp -= 1
        hitted = 1
    }
}
