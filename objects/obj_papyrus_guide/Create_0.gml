if (FL_PapyrusStatus == PapyrusStatus.Killed)
{
	instance_destroy()
	return;
}
dsprite = spr_papyrus_d
usprite = spr_papyrus_u
lsprite = spr_papyrus_l
rsprite = spr_papyrus_r
dtsprite = spr_papyrus_dt
utsprite = spr_papyrus_ut
ltsprite = spr_papyrus_lt
rtsprite = spr_papyrus_rt
myinteract = 0
facing = Direction.Down
direction = 270
talkedto = 0
image_speed = 0
fun = false
spot = 2
myscore = 0
workout = 0
intro = 0
if (global.entrance == 2)
{
	spot = 5
	x = 26
	y -= 80
	solid = 0
	vspeed = 6
	sprite_index = spr_papyrus_d
	image_speed = 0.25
}
if (FL_PapyrusDateCounter >= 4)
	instance_destroy()
