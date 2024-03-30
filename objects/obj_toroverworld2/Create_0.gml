scr_depth(0, 0, 0, 0, 0)
t = 0
image_speed = 0
dsprite = spr_toriel_d
usprite = spr_toriel_u
lsprite = spr_toriel_l
rsprite = spr_toriel_r
dtsprite = spr_toriel_dt
utsprite = spr_toriel_ut
ltsprite = spr_toriel_lt
rtsprite = spr_toriel_rt
myinteract = 0
facing = Direction.Left
conversation = 0
direction = 270
path_start(path_torielwalk1, 0, path_action_stop, 1)
if (global.plot > 1)
    instance_destroy()
