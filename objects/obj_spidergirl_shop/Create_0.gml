dsprite = spr_sans_d
usprite = spr_sans_u
lsprite = spr_sans_l
rsprite = spr_sans_r
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
myinteract = 0
facing = Direction.Down
direction = 0
talkedto = 0
image_speed = 0
dis = 0
if (global.plot > 163)
    dis = 1
if (FL_KilledMuffet == 1)
    dis = 1
if (dis == 1)
    instance_destroy()
