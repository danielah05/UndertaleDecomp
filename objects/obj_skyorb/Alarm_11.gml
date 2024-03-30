type = choose(0, 1)
snd_play(snd_break2)
instance_create(0, 0, obj_flasher)
if (type == 0)
    cc = instance_create(x, y, obj_skymoon)
if (type == 1)
    cc = instance_create(x, y, obj_sunmoon)
cc.dmg = dmg
instance_destroy()
