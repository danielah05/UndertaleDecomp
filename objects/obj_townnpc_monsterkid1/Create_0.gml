dsprite = spr_mkid_d
usprite = spr_mkid_u
lsprite = spr_mkid_l
rsprite = spr_mkid_r
dtsprite = spr_mkid_dt
utsprite = spr_mkid_ut
ltsprite = spr_mkid_lt
rtsprite = spr_mkid_rt
myinteract = 0
facing = Direction.Left
direction = 270
talkedto = 0
image_speed = 0
con = 0
fun = false
if (global.plot > 100 && room == room_tundra_town && FL_TruePacifist == false)
	instance_destroy()
if (global.plot > 103 && room == room_water2)
	instance_destroy()
