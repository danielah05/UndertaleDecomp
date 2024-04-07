dsprite = spr_npc_dadslime
usprite = spr_npc_dadslime
lsprite = spr_npc_dadslime
rsprite = spr_npc_dadslime
dtsprite = spr_npc_dadslime
utsprite = spr_npc_dadslime
ltsprite = spr_npc_dadslime
rtsprite = spr_npc_dadslime
myinteract = 0
facing = Direction.Down
direction = 0
talkedto = 0
image_speed = 0
if (scr_murderlv() >= 12)
    instance_destroy()
kk = 0
if (FL_KilledMuffet != 0)
    kk = 1
if (global.plot < 165)
    kk = 1
if (kk == 1)
    instance_destroy()
