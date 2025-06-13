if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
	undyne = instance_create(520, 80, obj_undynea_actor)
	undyne.direction = 0
	undyne.sprite_index = undyne.rsprite
	mkid = instance_create(730, 60, obj_mkid_actor)
	mkid.visible = false
	con = 2
	alarm[4] = 20
	obj_darkness_undyne.glowyes = 2
	global.interact = 1
	obj_mainchara.cutscene = true
}
if (con == 2)
{
	global.interact = 1
	view_xview_set(0, (view_xview_get(0) - 5))
}
if (con == 3)
{
	global.facing = Direction.Left
	con = 4
	alarm[4] = 80
}
if (con == 5)
{
	undyne.hspeed = 1
	undyne.image_speed = 0.2
	con = 6
	alarm[4] = 30
}
if (con == 7)
{
	undyne.hspeed = 0
	undyne.image_speed = 0
	con = 8
	alarm[4] = 40
}
if (con == 9)
{
	undyne.hspeed = 1
	undyne.image_speed = 0.2
	con = 10
	alarm[4] = 30
}
if (con == 11)
{
	undyne.hspeed = 0
	undyne.image_speed = 0
	con = 12
	alarm[4] = 40
}
if (con == 13)
{
	global.typer = 37
	global.msc = 621
	instance_create(0, 0, obj_dialoguer)
	con = 14
}
if (con == 14 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 1
	con = 15
	alarm[4] = 20
}
if (con == 16)
{
	global.interact = 1
	undyne.sprite_index = spr_undyne_rushfade
	undyne.image_index = 0
	snd_play(snd_grab)
	con = 15.1
	alarm[4] = 40
}
if (con == 16.1)
{
	rushf = scr_marker(undyne.x, undyne.y, spr_undyne_rush)
	rushf.image_alpha = 0
	rushf.depth = 4000
	snd_play(snd_spearappear)
	con = 15.2
	alarm[4] = 40
}
if (con == 15.2)
{
	with (rushf)
	{
		if (image_alpha < 1)
			image_alpha += 0.05
	}
}
if (con == 16.2)
	con = 18
if (con == 18)
{
	with (rushf)
		instance_destroy()
	undyne.sprite_index = spr_undyne_rush
	undyne.hspeed = 1
	undyne.image_speed = 0.2
	con = 17.1
	alarm[4] = 10
}
if (con == 18.1)
{
	undyne.hspeed = 0
	undyne.image_speed = 0
	alarm[4] = 30
	con = 17.2
}
if (con == 18.2)
{
	undyne.hspeed = 3
	con = 17.3
	undyne.image_index = 0
	undyne.fun = 3
	undyne.image_speed = 0.5
	alarm[4] = 28
}
if (con == 18.3)
{
	undyne.image_index = 0
	undyne.hspeed = 0
	undyne.image_speed = 0
	con = 17.4
	alarm[4] = 30
}
if (con == 18.4)
{
	global.battlegroup = 200
	b = instance_create(0, 0, obj_battler)
	b.claptimer = 4
	con = 20
}
if (con == 20 && instance_exists(obj_battler) == false)
{
	mkid.visible = true
	mkid.vspeed = 4
	snd_play(snd_splash)
	con = 21
	alarm[4] = 11
}
if (con == 22)
{
	global.typer = 5
	global.msc = 0
	global.msg[0] = scr_gettext("obj_undyne_echoflower_299")
	scr_regulartext()
	con = 23
	undyne.hspeed = 0
	undyne.image_speed = 0
	mkid.vspeed = 0
	mkid.image_speed = 0.2
	mkid.sprite_index = mkid.dtsprite
}
if (con == 23 && instance_exists(OBJ_WRITER) == false)
{
	mkid.image_speed = 0
	mkid.sprite_index = mkid.dsprite
	con = 24
	alarm[4] = 30
}
if (con == 25)
{
	mkid.sprite_index = mkid.lsprite
	con = 26
	alarm[4] = 20
}
if (con == 27)
{
	mkid.sprite_index = mkid.rsprite
	con = 28
	alarm[4] = 20
}
if (con == 29)
{
	mkid.sprite_index = mkid.lsprite
	con = 30
	alarm[4] = 40
}
if (con == 31)
{
	mkid.sprite_index = mkid.rtsprite
	con = 32
	alarm[4] = 10
}
if (con == 33)
{
	mkid.image_speed = 0.2
	global.msg[0] = scr_gettext("obj_undyne_echoflower_348")
	global.msg[1] = scr_gettext("obj_undyne_echoflower_349")
	global.msg[2] = scr_gettext("obj_undyne_echoflower_350")
	scr_regulartext()
	con = 34
}
if (con == 34 && instance_exists(OBJ_WRITER) == false)
{
	mkid.image_speed = 0
	mkid.sprite_index = mkid.lsprite
	con = 35
	alarm[4] = 20
}
if (con == 36)
{
	mkid.sprite_index = mkid.rsprite
	con = 37
	alarm[4] = 20
}
if (con == 38)
{
	mkid.sprite_index = mkid.lsprite
	con = 39
	alarm[4] = 20
}
if (con == 40)
{
	mkid.sprite_index = mkid.dtsprite
	con = 41
	alarm[4] = 30
}
if (con == 42)
{
	mkid.image_speed = 0.2
	global.msg[0] = scr_gettext("obj_undyne_echoflower_388")
	global.msg[1] = scr_gettext("obj_undyne_echoflower_389")
	scr_regulartext()
	con = 43
}
if (con == 43 && instance_exists(OBJ_WRITER) == false)
{
	undyne.sprite_index = undyne.rsprite
	undyne.hspeed = 3
	undyne.image_speed = 0.25
	con = 44
	alarm[4] = 7
}
if (con == 45)
{
	snd_play(snd_movemenu)
	undyne.hspeed = 0
	undyne.image_speed = 0
	undyne.image_index = 0
	mkid.visible = false
	undyne.sprite_index = spr_undyne_cheektug
	con = 46
	alarm[4] = 20
}
if (con == 47)
{
	undyne.hspeed = -2
	undyne.image_speed = 0.25
	global.msg[0] = scr_gettext("obj_undyne_echoflower_419")
	global.msg[1] = scr_gettext("obj_undyne_echoflower_420")
	scr_regulartext()
	con = 48
}
if (con == 48 && instance_exists(OBJ_WRITER) == false)
{
	if (undyne.x < (view_xview_get(0) - 100))
	{
		with (undyne)
			instance_destroy()
		with (mkid)
			instance_destroy()
		con = 49
		vol = 0
		caster_stop(global.currentsong)
		alarm[4] = 100
	}
}
if (con == 49)
	view_xview_set(0, (view_xview_get(0) + 1))
if (con == 50)
{
	with (obj_mainchara)
		uncan = 0
	caster_loop(global.currentsong, 1, 0.9)
	obj_mainchara.cutscene = false
	global.interact = 0
	global.plot = 118
	con = 51
}
