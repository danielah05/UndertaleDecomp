shudder = 32
if (tvmode == 0)
{
    sh = instance_create(0, 0, obj_vsflowey_shaker)
    sh.shakex = 6
    sh.shakey = 6
    tt = choose(4, 5, 12, 13, 14, 20, 22, 27, 28, 35)
    tvmode = 4
    alarm[3] = 15
    alarm[2] = 40
    with (obj_floweybodyparent)
        frozen = 2
}
