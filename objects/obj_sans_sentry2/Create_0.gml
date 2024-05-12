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
direction = 270
talkedto = 0
image_speed = 0
con = 0
touched = false
gone = 0
if (FL_SansDated2 > SansDated2.None)
    gone = 1
if (FL_PapyrusStatus == PapyrusStatus.Killed)
    gone = 1
if (global.plot >= 200)
    gone = 1
if (gone == 1)
    instance_destroy()
