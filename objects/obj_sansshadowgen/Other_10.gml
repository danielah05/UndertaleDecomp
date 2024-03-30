shadow = 1
alarm[0] = 12
if (level == 2)
    alarm[0] = 3
if (level == 3)
    alarm[0] = 3
caster_pause(global.batmusic)
with (obj_bonestab)
    instance_destroy()
with (obj_sans_shaker)
    instance_destroy()
with (obj_bonewall_normal)
    instance_destroy()
with (obj_bonewall)
    instance_destroy()
with (obj_boneplat)
    instance_destroy()
with (obj_sans_bonebul)
    instance_destroy()
with (obj_gasterblaster)
    instance_destroy()
if (shadow_num >= shadow_max)
    global.border = 0
snd_play(snd_noise)
with (obj_borderparent)
    visible = false
