caster_stop(expl)
caster_play(expl, 0.4, 2)
with (obj_vsflowey_shaker)
    instance_destroy()
shk = instance_create(0, 0, obj_vsflowey_shaker)
shk.shakex = 5
shk.shakey = 5
