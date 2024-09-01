dsprite = spr_npc_kidslime1
usprite = spr_npc_kidslime1
lsprite = spr_npc_kidslime1
rsprite = spr_npc_kidslime1
dtsprite = spr_npc_kidslime1
utsprite = spr_npc_kidslime1
ltsprite = spr_npc_kidslime1
rtsprite = spr_npc_kidslime1
myinteract = 0
facing = Direction.Down
direction = 0
talkedto = 0
image_speed = 0
if (FL_PapyrusStatus == PapyrusStatus.Killed || scr_deaddog() == 1)
    instance_destroy()
if (scr_murderlv() >= MurderLevel.Lv7TundraKills)
    instance_destroy()
