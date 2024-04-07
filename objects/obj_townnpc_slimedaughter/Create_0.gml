dsprite = spr_npc_kidslime2
usprite = spr_npc_kidslime2
lsprite = spr_npc_kidslime2
rsprite = spr_npc_kidslime2
dtsprite = spr_npc_kidslime2
utsprite = spr_npc_kidslime2
ltsprite = spr_npc_kidslime2
rtsprite = spr_npc_kidslime2
myinteract = 0
facing = Direction.Down
direction = 0
talkedto = 0
image_speed = 0
if (FL_PapyrusStatus == PapyrusStatus.Killed || scr_deaddog() == 1)
    instance_destroy()
if (FL_PapyrusStatus == PapyrusStatus.Killed || scr_deaddog() == 1)
    instance_destroy()
if (scr_murderlv() >= 7)
    instance_destroy()
