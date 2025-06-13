if (con == 0)
{
	con = 0.1
	alarm[4] = 30
}
if (con == 1.1)
{
	obj_mettb_body.myblend = c_black
	obj_mettb_body.myalpha = 0
	obj_mettb_body.sineron = 0
	n = instance_create(10, -100, obj_npc_marker)
	n.visible = true
	n.sprite_index = spr_stagelight_bad
	n.image_xscale = 2
	n.image_yscale = 2
	n.image_speed = 0
	n.vspeed = 2
	n2 = instance_create(630, -100, obj_npc_marker)
	n2.visible = true
	n2.sprite_index = spr_stagelight_bad
	n2.image_xscale = -2
	n2.image_yscale = 2
	n2.image_speed = 0
	n2.vspeed = 2
	n.depth = 11
	n2.depth = 11
	con = 1
	alarm[4] = 50
}
if (con == 2)
{
	snd_play(snd_noise)
	n.vspeed = 0
	n2.vspeed = 0
	con = 3
	alarm[4] = 30
}
if (con == 4)
{
	snd_play(snd_noise)
	n.image_index = 1
	n2.image_index = 1
	cloud = 1
	con = 5
	alarm[4] = 60
	alpha = 0
}
if (cloud == 1)
{
	cltimer -= 1
	if (cltimer < 1)
	{
		ccc = instance_create(160, 0, obj_stagecloud)
		if (otr == 0)
		{
			otr = 1
			ccc.hspeed = (-ccc.hspeed)
		}
		else
			otr = 0
		cltimer = 9
	}
}
if (con == 6)
{
	if (obj_mettb_body.myalpha == 0)
		caster_loop(presong, 0.7, 0.85)
	obj_mettb_body.myalpha += 0.015
	if (obj_mettb_body.myalpha >= 1)
		con = 7
}
if (con == 7)
{
	global.msc = 0
	global.typer = 51
	global.msg[0] = scr_gettext("obj_mett_bossintro_174")
	global.msg[1] = scr_gettext("obj_mett_bossintro_175")
	global.msg[2] = scr_gettext("obj_mett_bossintro_176")
	global.msg[3] = scr_gettext("obj_mett_bossintro_177")
	global.msg[4] = scr_gettext("obj_mett_bossintro_178")
	global.msg[5] = scr_gettext("obj_mett_bossintro_179")
	global.msg[6] = scr_gettext("obj_mett_bossintro_180")
	scr_blcon(220, 250, 4)
	blcon.depth = -6000
	writer.depth = -6001
	blcon.y += 20
	con = 7.1
	vol = 0.7
}
if (con == 7.1 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.stringno > 6)
	{
		if (vol > 0)
			vol -= 0.01
		caster_set_volume(presong, vol)
	}
}
if (con == 7.1 && instance_exists(OBJ_WRITER) == false)
{
	flasher = 1
	flashamt = 0
	con = 8
}
if (con == 9)
{
	con = 10
	alarm[4] = 20
}
if (con == 11)
{
	global.msg[0] = scr_gettext("obj_mett_bossintro_213")
	scr_blcon((obj_mettb_body.x - 260), 60, 1)
	con = 12
}
if (con == 12 && instance_exists(OBJ_WRITER) == false)
{
	global.monster[0] = 0
	global.monster[1] = false
	global.monsterinstance[0] = 0
	with (obj_mettatonb_third)
		instance_destroy()
	global.monstertype[0] = MonsterType.MettatonEX
	global.msc = 0
	obj_mettb_body.depth = 10
	global.monsterinstance[0] = instance_create(210, 60, obj_mettatonex)
	global.msg[0] = scr_gettext("scr_battlegroup_1221")
	caster_loop(global.batmusic, 1, 0.95)
	global.mnfight = 3
	global.myfight = -1
	global.bmenuno = 0
	con = 13
	instance_destroy()
}
