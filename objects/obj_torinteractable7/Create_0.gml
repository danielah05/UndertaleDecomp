dsprite = spr_toriel_d
usprite = spr_toriel_u
lsprite = spr_toriel_l
rsprite = spr_toriel_r
dtsprite = spr_toriel_dt
utsprite = spr_toriel_ut
ltsprite = spr_toriel_lt
rtsprite = spr_toriel_rt
myinteract = 0
facing = Direction.Right
direction = 180
talkedto = 0
image_speed = 0
if (FL_TruePacifist == true)
{
	y += 20
	dsprite = spr_asriel_d
	usprite = spr_asriel_u
	lsprite = spr_asriel_l
	rsprite = spr_asriel_r
	dtsprite = spr_asriel_dt
	utsprite = spr_asriel_ut
	ltsprite = spr_asriel_lt
	rtsprite = spr_asriel_rt
	ossafe_ini_open("undertale.ini")
	curf = ini_read_real("EndF", "EndF", 0)
	ossafe_ini_close()
	if (curf > 0)
		instance_destroy()
}
