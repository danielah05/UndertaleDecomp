scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 1
	con = 10.1
	w_active = 1
	thisx = obj_mainchara.x
	xx = thisx
}
if (con == 10.1)
	global.interact = 1
if (con == 11)
{
	global.interact = 1
	con = 12
	alarm[4] = 30
}
if (con == 12)
	global.interact = 1
if (con == 13)
{
	global.interact = 1
	shakify = 2
	con = 14
	alarm[4] = 30
}
if (con == 14)
	global.interact = 1
if (con == 15)
{
	shakify = 0
	con = 16
	alarm[4] = 60
}
if (con == 17)
{
	shakify = 3
	con = 18
	alarm[4] = 40
}
if (con == 19)
{
	shakify = 0
	visible = false
	undyne = instance_create((x - 10), y, obj_undynea_actor)
	undyne.rsprite = spr_undyne_helmet_r
	undyne.dsprite = spr_undyne_helmet_d
	undyne.lsprite = spr_undyne_helmet_l
	undyne.usprite = spr_undyne_helmet_u
	undyne.sprite_index = undyne.rsprite
	con = 20
	snd_play(snd_noise)
	alarm[4] = 90
}
if (con == 20)
	global.interact = 1
if (con == 21)
{
	undyne.sprite_index = undyne.dsprite
	con = 22
	alarm[4] = 60
}
if (con == 23)
{
	undyne.sprite_index = undyne.usprite
	con = 24
	alarm[4] = 60
}
if (con == 25)
{
	undyne.sprite_index = undyne.rsprite
	con = 26
	alarm[4] = 90
}
if (con == 27)
{
	undyne.sprite_index = undyne.lsprite
	undyne.hspeed = -1
	undyne.image_speed = 0.1
	con = 28
	alarm[4] = 100
}
if (con == 29)
{
	FL_UndyneStatus = UndyneStatus.Spared
	global.plot = 122
	with (undyne)
		instance_destroy()
	global.interact = 0
	instance_destroy()
}
if (shakify > 0)
{
	if (shaked == 0)
	{
		shakememx = x
		shakememy = y
		shaked = 1
	}
	x = ((shakememx + random(shakify)) - (shakify / 2))
	y = ((shakememy + random(shakify)) - (shakify / 2))
}
