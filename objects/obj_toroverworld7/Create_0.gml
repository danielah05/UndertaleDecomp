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
facing = Direction.Down
conversation = 0
direction = 180
if (global.plot > 8)
	instance_destroy()
else
{
	instance_create(0, 0, obj_musfadeout)
	global.typer = 4
	global.facechoice = 1
	global.msc = 221
	instance_create(0, 0, obj_dialoguer)
	global.interact = 1
	conversation = 1
}
