with (obj_vsflowey_shaker)
    instance_destroy()
shk = instance_create(0, 0, obj_vsflowey_shaker)
shk.shakex = 8
shk.shakey = 8
if (h_mode == 0)
{
    if (hit == 0)
        caster_play_l(lithit, 0.8, 0.75)
    if (hit == 3)
        caster_play_l(lithit2, 0.8, 0.65)
    if (hit == 5)
        caster_play_l(lithit, 0.9, 0.9)
}
if (h_mode == 1)
{
    if (hit == 0)
        caster_play_l(lithit, 0.8, 0.6)
    if (hit == 1)
        caster_play_l(lithit2, 0.8, 0.65)
    if (hit == 2)
        caster_play_l(lithit, 0.8, 0.7)
    if (hit == 3)
        caster_play_l(lithit2, 0.8, 0.75)
    if (hit == 4)
        caster_play_l(lithit, 0.8, 0.8)
}
hit += 1
