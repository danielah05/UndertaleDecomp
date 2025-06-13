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
intro = 0
if (FL_PapyrusDateCounter >= 4)
{
	instance_destroy()
	return;
}
