dsprite = spr_icewolf
usprite = spr_icewolf
lsprite = spr_icewolf
rsprite = spr_icewolf
dtsprite = spr_icewolf
utsprite = spr_icewolf
ltsprite = spr_icewolf
rtsprite = spr_icewolf
myinteract = 0
facing = Direction.Down
direction = 0
talkedto = 0
image_speed = 0
if (scr_murderlv() >= MurderLevel.Lv7TundraKills)
    instance_destroy()
if (FL_TruePacifist == false)
    instance_destroy()
