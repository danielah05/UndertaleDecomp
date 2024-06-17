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
if (room == room_tundra6 && global.plot >= 43)
    instance_destroy()
if (room == room_tundra8 && global.plot >= 46)
    instance_destroy()
if (room == room_tundra_iceexit_new && global.plot > 64)
    instance_destroy()
gone = 0
if (FL_SansDated2 > SansDated2.None)
    gone = 1
if (FL_PapyrusStatus == PapyrusStatus.Killed)
    gone = 1
if (global.plot > 200)
    instance_destroy()
murder = 0
if (scr_murderlv() >= 2 && FL_SparedSpecific == 0)
    murder = 1
if (FL_TundraKillsCounter >= 16)
    murder = 1
if (room == room_tundra6 && murder == 1)
    gone = 1
if (room == room_tundra8 && murder == 1)
    gone = 1
if (gone == 1)
    instance_destroy()
s_click = 0
