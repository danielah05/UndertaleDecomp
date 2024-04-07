snd_play(snd_bluh)
global.interact = 1
open = 1
visible = true
obj_mainchara.cutscene = true
with (instance_position((x + 10), (y + 20), obj_solidtall_2))
    instance_destroy()
scr_shake(2, 2, 2)
global.interact = 1
alarm[5] = 30
myinteract = 0
