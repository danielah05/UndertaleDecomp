if (global.my_inv < 0)
{
    global.my_inv = 20
    hitted = 0
    snd_play(snd_hurt1_c)
    instance_create(0, 0, obj_vsflowey_shaker)
    global.my_hp -= 2
    if (global.my_hp <= 1)
        global.my_hp = 1
}
