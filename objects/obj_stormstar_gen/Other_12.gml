caster_play(expl, 0.8, 1.1)
off = 1
vol = 0.8
with (obj_vsflowey_shaker)
    instance_destroy()
if (!instance_exists(obj_shaker))
    scr_shake(7, 7, 2)
