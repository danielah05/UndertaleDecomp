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
if (FL_FlameyNameChoice > Choices.NotSet)
	sprite_index = spr_heatsf_shock
if (room == room_fire_elevator_r2 && global.plot >= 166)
	instance_destroy()
if (scr_murderlv() >= MurderLevel.Lv12UndyneEXKilled)
	instance_destroy()
if (FL_KilledMettaton == 1)
	instance_destroy()
