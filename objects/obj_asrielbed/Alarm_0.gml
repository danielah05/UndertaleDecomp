snd_play(snd_noise)
global.phasing = 1
obj_solidsmall.solid = 0
with (obj_mainchara)
    path_start(path_bedjump, 3, path_action_stop, 0)
jump = 1
global.facing = Direction.Up
global.interact = 1
