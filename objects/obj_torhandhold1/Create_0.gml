scr_depth(0, 0, 0, 0, 0)
global.plot = 7.5
image_speed = 0
dsprite = spr_toriel_handhold_d
usprite = spr_toriel_handhold_u
lsprite = spr_toriel_l
rsprite = spr_toriel_handhold_r
dtsprite = spr_toriel_dt
utsprite = spr_toriel_ut
ltsprite = spr_toriel_lt
rtsprite = spr_toriel_rt
myinteract = 0
facing = Direction.Down
direction = 0
obj_mainchara.visible = false
obj_mainchara.y = (y + 28)
path_start(path_torielwalk5_2, 1, path_action_stop, 0)
global.phasing = 1
obj_spiketile2.solid = 0
with (obj_mainchara)
    path_start(path_torielwalk5_2, 1, path_action_stop, 0)
global.interact = 6
conversation = 0
phone = 0
