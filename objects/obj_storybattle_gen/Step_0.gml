if (skipper == 1 && instance_exists(OBJ_WRITER))
{
	if control_check_pressed(CancelButton)
	{
		if (alarm[4] > 10)
			alarm[4] = 10
	}
	scr_textskip()
}
if (global.turntimer < 2)
{
	instance_create(0, 0, obj_persistentfader)
	room_goto(global.currentroom)
	global.invc = 0
}
if (global.turntimer < 14 && instance_exists(obj_unfader) == false)
{
	yyy = instance_create(0, 0, obj_unfader)
	yyy.tspeed = 0.08
}
if (off == 1)
	global.turntimer -= 1
activetimer += 1
if (con == 5 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_295")
	blcon = instance_create(50, 20, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(80, 30, OBJ_WRITER)
	con = 6
	alarm[4] = 110
}
if (con == 7 && instance_exists(OBJ_WRITER))
{
	if (blconwd1.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_307")
		blcon2 = instance_create(400, 20, obj_blconsm)
		blcon2.sprite_index = spr_blconabove
		blconwd2 = instance_create(430, 30, OBJ_WRITER)
		con = 8
	}
}
if (con == 8)
{
	if (instance_exists(blconwd2) == false)
	{
		off = 1
		with (OBJ_WRITER)
			instance_destroy()
		with (obj_blconsm)
			instance_destroy()
	}
}
if (con == 10 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_333")
	blcon = instance_create(50, 20, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(80, 30, OBJ_WRITER)
	con = 11
	alarm[4] = 140
}
if (con == 12 && instance_exists(OBJ_WRITER))
{
	if (blconwd1.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_345")
		blcon2 = instance_create(400, 20, obj_blconsm)
		blcon2.sprite_index = spr_blconabove
		blconwd2 = instance_create(430, 30, OBJ_WRITER)
		con = 13
	}
}
if (con == 13)
{
	if (instance_exists(blconwd2) == false)
	{
		off = 1
		with (OBJ_WRITER)
			instance_destroy()
		with (obj_blconsm)
			instance_destroy()
	}
}
if (con == 15 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_370")
	blcon = instance_create(30, 20, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 30, OBJ_WRITER)
	con = 16
	alarm[4] = 140
}
if (con == 17)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_383")
	blcon2 = instance_create(220, 20, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 30, OBJ_WRITER)
	con = 18
	alarm[4] = 140
}
if (con == 19 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_395")
		blcon3 = instance_create(420, 20, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 30, OBJ_WRITER)
		con = 20
	}
}
if (con == 20)
{
	if (instance_exists(blconwd3) == false)
	{
		off = 1
		with (OBJ_WRITER)
			instance_destroy()
		with (obj_blconsm)
			instance_destroy()
	}
}
if (con == 25 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_421")
	blcon = instance_create(50, 20, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(80, 30, OBJ_WRITER)
	con = 26
	alarm[4] = 70
}
if (con == 27 && instance_exists(OBJ_WRITER))
{
	if (blconwd1.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_433")
		blcon2 = instance_create(400, 20, obj_blconsm)
		blcon2.sprite_index = spr_blconabove
		blconwd2 = instance_create(430, 30, OBJ_WRITER)
		con = 28
	}
}
if (con == 28)
{
	if (instance_exists(blconwd2) == false)
	{
		off = 1
		with (OBJ_WRITER)
			instance_destroy()
		with (obj_blconsm)
			instance_destroy()
	}
}
if (con == 30 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_459")
	blcon = instance_create(30, 20, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 30, OBJ_WRITER)
	con = 31
	alarm[4] = 80
}
if (con == 32)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_472")
	blcon2 = instance_create(220, 20, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 30, OBJ_WRITER)
	con = 33
	alarm[4] = 90
}
if (con == 34 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_484")
		blcon3 = instance_create(420, 20, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 30, OBJ_WRITER)
		con = 35
	}
}
if (con == 35)
{
	if (instance_exists(blconwd3) == false)
	{
		off = 1
		with (OBJ_WRITER)
			instance_destroy()
		with (obj_blconsm)
			instance_destroy()
	}
}
if (con == 40 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_511")
	blcon = instance_create(50, 20, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(80, 30, OBJ_WRITER)
	con = 41
	alarm[4] = 50
}
if (con == 42 && instance_exists(OBJ_WRITER))
{
	if (blconwd1.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_523")
		blcon2 = instance_create(400, 20, obj_blconsm)
		blcon2.sprite_index = spr_blconabove
		blconwd2 = instance_create(430, 30, OBJ_WRITER)
		con = 43
	}
}
if (con == 43)
{
	if (instance_exists(blconwd2) == false)
	{
		with (OBJ_WRITER)
			instance_destroy()
		with (obj_blconsm)
			instance_destroy()
		con = 44
	}
}
if (con == 44)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_546")
	blcon = instance_create(50, 20, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(80, 30, OBJ_WRITER)
	con = 45
	alarm[4] = 50
}
if (con == 46 && instance_exists(OBJ_WRITER))
{
	if (blconwd1.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_558")
		blcon2 = instance_create(400, 20, obj_blconsm)
		blcon2.sprite_index = spr_blconabove
		blconwd2 = instance_create(430, 30, OBJ_WRITER)
		con = 47
	}
}
if (con == 47)
{
	if (instance_exists(blconwd2) == false)
	{
		with (OBJ_WRITER)
			instance_destroy()
		with (obj_blconsm)
			instance_destroy()
		with (obj_blconwdflowey)
			instance_destroy()
		off = 1
	}
}
if (con == 50 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_583")
	blcon = instance_create(190, 20, obj_blconwdflowey)
	blconwd1 = instance_create(230, 30, OBJ_WRITER)
	con = 51
	alarm[4] = 140
}
if (con == 52 && instance_exists(OBJ_WRITER))
{
	if (blconwd1.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_594")
		blcon2 = instance_create(220, 130, obj_blconsm)
		blcon2.sprite_index = spr_blconwdshrt_l
		blconwd2 = instance_create(260, 140, OBJ_WRITER)
		con = 47
	}
}
if (con == 60 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_609")
	blcon = instance_create(30, 10, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 20, OBJ_WRITER)
	con = 61
	alarm[4] = 140
}
if (con == 62)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_622")
	blcon2 = instance_create(220, 10, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 20, OBJ_WRITER)
	con = 63
	alarm[4] = 110
}
if (con == 64 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_634")
		blcon3 = instance_create(420, 10, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 20, OBJ_WRITER)
		con = 20
	}
}
if (con == 70 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_649")
	blcon = instance_create(30, 10, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 20, OBJ_WRITER)
	con = 71
	alarm[4] = 110
}
if (con == 72)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_662")
	blcon2 = instance_create(220, 10, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 20, OBJ_WRITER)
	con = 73
	alarm[4] = 110
}
if (con == 74 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_674")
		blcon3 = instance_create(420, 10, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 20, OBJ_WRITER)
		con = 20
	}
}
if (con == 80 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_689")
	blcon = instance_create(30, 10, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 20, OBJ_WRITER)
	con = 81
	alarm[4] = 90
}
if (con == 82)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_702")
	blcon2 = instance_create(220, 10, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 20, OBJ_WRITER)
	con = 83
	alarm[4] = 120
}
if (con == 84 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_714")
		blcon3 = instance_create(420, 10, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 20, OBJ_WRITER)
		con = 20
	}
}
if (con == 90 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_727")
	blcon = instance_create(30, 10, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 20, OBJ_WRITER)
	con = 91
	alarm[4] = 120
}
if (con == 92)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_740")
	blcon2 = instance_create(220, 10, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 20, OBJ_WRITER)
	con = 93
	alarm[4] = 100
}
if (con == 94 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_752")
		blcon3 = instance_create(420, 10, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 20, OBJ_WRITER)
		con = 20
	}
}
if (con == 100 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_767")
	blcon = instance_create(190, 20, obj_blconwdflowey)
	blconwd1 = instance_create(230, 30, OBJ_WRITER)
	con = 101
	alarm[4] = 40
}
if (con == 102 && instance_exists(OBJ_WRITER))
{
	if (blconwd1.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_778")
		blcon2 = instance_create(220, 130, obj_blconsm)
		blcon2.sprite_index = spr_blconwdshrt_l
		blconwd2 = instance_create(260, 140, OBJ_WRITER)
		con = 103
	}
}
if (con == 103)
{
	if (instance_exists(blconwd2) == false)
	{
		with (blcon2)
			instance_destroy()
		with (OBJ_WRITER)
			instance_destroy()
		with (obj_blconwdflowey)
			instance_destroy()
		con = 104
		alarm[4] = 20
	}
}
if (con == 105)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_805")
	blcon = instance_create(190, 20, obj_blconwdflowey)
	blconwd1 = instance_create(230, 30, OBJ_WRITER)
	con = 106
	alarm[4] = 50
}
if (con == 107 && instance_exists(OBJ_WRITER))
{
	if (blconwd1.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_816")
		blcon2 = instance_create(220, 130, obj_blconsm)
		blcon2.sprite_index = spr_blconwdshrt_l
		blconwd2 = instance_create(260, 140, OBJ_WRITER)
		con = 47
	}
}
if (con == 110 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_832")
	blcon = instance_create(30, 10, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 20, OBJ_WRITER)
	con = 111
	alarm[4] = 90
}
if (con == 112)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_845")
	blcon2 = instance_create(220, 10, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 20, OBJ_WRITER)
	con = 113
	alarm[4] = 100
}
if (con == 114 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_857")
		blcon3 = instance_create(420, 10, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 20, OBJ_WRITER)
		con = 20
	}
}
if (con == 120 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_872")
	blcon = instance_create(30, 10, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 20, OBJ_WRITER)
	con = 121
	alarm[4] = 80
}
if (con == 122)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_885")
	blcon2 = instance_create(220, 10, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 20, OBJ_WRITER)
	con = 123
	alarm[4] = 120
}
if (con == 124 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_897")
		blcon3 = instance_create(420, 10, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 20, OBJ_WRITER)
		con = 20
	}
}
if (con == 130 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_911")
	blcon = instance_create(30, 10, obj_blconsm)
	blcon.sprite_index = spr_blconabove
	blconwd1 = instance_create(60, 20, OBJ_WRITER)
	con = 131
	alarm[4] = 110
}
if (con == 132)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_924")
	blcon2 = instance_create(220, 10, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 20, OBJ_WRITER)
	con = 133
	alarm[4] = 100
}
if (con == 134 && instance_exists(OBJ_WRITER))
{
	if (blconwd2.halt != false)
	{
		global.msg[0] = scr_gettext("obj_storybattle_gen_936")
		blcon3 = instance_create(420, 10, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 20, OBJ_WRITER)
		con = 20
	}
}
if (con == 140 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_951")
	blcon2 = instance_create(220, 20, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 30, OBJ_WRITER)
	con = 141
}
if (con == 141)
{
	if (instance_exists(blconwd2) == false)
	{
		with (OBJ_WRITER)
			instance_destroy()
		with (blcon2)
			instance_destroy()
		global.msg[0] = scr_gettext("obj_storybattle_gen_965")
		blcon = instance_create(30, 20, obj_blconsm)
		blcon.sprite_index = spr_blconabove
		blconwd1 = instance_create(60, 30, OBJ_WRITER)
		global.msg[0] = scr_gettext("obj_storybattle_gen_971")
		blcon2 = instance_create(220, 20, obj_blconsm)
		blcon2.sprite_index = spr_blconabove
		blconwd2 = instance_create(250, 30, OBJ_WRITER)
		global.msg[0] = scr_gettext("obj_storybattle_gen_976")
		blcon3 = instance_create(420, 20, obj_blconsm)
		blcon3.sprite_index = spr_blconabove
		blconwd3 = instance_create(450, 30, OBJ_WRITER)
		con = 142
	}
}
if (con == 142)
{
	if (instance_exists(blconwd3) == false)
	{
		with (obj_blconsm)
			instance_destroy()
		with (OBJ_WRITER)
			instance_destroy()
		off = 1
		con = 143
	}
}
if (con == 150 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	global.msg[0] = scr_gettext("obj_storybattle_gen_1004")
	blcon = instance_create(170, 15, obj_blconwdflowey)
	blconwd1 = instance_create(210, 25, OBJ_WRITER)
	con = 151
	alarm[4] = 85
}
if (con == 152)
{
	con = 153
	global.msg[0] = scr_gettext("obj_storybattle_gen_1014")
	blcon2 = instance_create(300, 120, obj_blconsm)
	blconwd2 = instance_create(325, 130, OBJ_WRITER)
	alarm[4] = 60
}
if (con == 154)
{
	con = 155
	global.msg[0] = scr_gettext("obj_storybattle_gen_1023")
	blcon3 = instance_create(530, 120, obj_blconsm)
	blconwd3 = instance_create(555, 130, OBJ_WRITER)
}
if (con == 155)
{
	if (instance_exists(blconwd3) == false)
	{
		with (obj_blconwdflowey)
			instance_destroy()
		with (obj_blconsm)
			instance_destroy()
		with (OBJ_WRITER)
			instance_destroy()
		off = 1
		con = 156
	}
}
if (con == 160 && activetimer == 15)
{
	global.msc = 0
	global.typer = 55
	con = 161
	global.msg[0] = scr_gettext("obj_storybattle_gen_1047")
	blcon2 = instance_create(220, 20, obj_blconsm)
	blcon2.sprite_index = spr_blconabove
	blconwd2 = instance_create(250, 30, OBJ_WRITER)
}
if (con == 161)
{
	if (instance_exists(blconwd2) == false)
	{
		ossafe_ini_open("undertale.ini")
		ini_write_real("General", "Tale", 1)
		ossafe_ini_close()
		ossafe_savedata_save()
		con = 162
		with (blcon2)
			instance_destroy()
		off = 1
	}
}
if (con == 300)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1073")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1074")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1075")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1076")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1077")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1078")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 301 && instance_exists(OBJ_WRITER) == false)
{
	off = 1
	con = 302
}
if (con == 305)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1093")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1094")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1095")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1096")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1097")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1098")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 310)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1107")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1108")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1109")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1110")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1111")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1112")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1113")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1114")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 315)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1123")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1124")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1125")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1126")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1127")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1128")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1129")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1130")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1131")
	global.msg[9] = scr_gettext("obj_storybattle_gen_1132")
	global.msg[10] = scr_gettext("obj_storybattle_gen_1133")
	global.msg[11] = scr_gettext("obj_storybattle_gen_1134")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 320)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1144")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1145")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1146")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1147")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1148")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1149")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1150")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1151")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1152")
	global.msg[9] = scr_gettext("obj_storybattle_gen_1153")
	global.msg[10] = scr_gettext("obj_storybattle_gen_1154")
	global.msg[11] = scr_gettext("obj_storybattle_gen_1155")
	global.msg[12] = scr_gettext("obj_storybattle_gen_1156")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 325)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1165")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1166")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1167")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1168")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1169")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1170")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1171")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1172")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1173")
	global.msg[9] = scr_gettext("obj_storybattle_gen_1174")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 330)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1183")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1184")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1185")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1186")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1187")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1188")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1189")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 335)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1197")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1198")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1199")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1200")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1201")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1202")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1203")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1204")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1205")
	global.msg[9] = scr_gettext("obj_storybattle_gen_1206")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 340)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1217")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1218")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1219")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1220")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1221")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1222")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1223")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1224")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1225")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 345)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1235")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1236")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1237")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1238")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1239")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1240")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1241")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1242")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1243")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 350)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1252")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1253")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1254")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1255")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1256")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1257")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1258")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 355)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1267")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1268")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1269")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1270")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1271")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1272")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1273")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1274")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1275")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 360)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1286")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1287")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1288")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1289")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1290")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1291")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1292")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1293")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1294")
	global.msg[9] = scr_gettext("obj_storybattle_gen_1295")
	global.msg[10] = scr_gettext("obj_storybattle_gen_1296")
	global.msg[11] = scr_gettext("obj_storybattle_gen_1297")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 365)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1307")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1308")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1309")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1310")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1311")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1312")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1313")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1314")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 370)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1324")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1325")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1326")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1327")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1328")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1329")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 375)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1339")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1340")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1341")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1342")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1343")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
if (con == 380)
{
	global.typer = 98
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1353")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1354")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1355")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1356")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 381
}
if (con == 381 && instance_exists(OBJ_WRITER))
{
	if (con == 381 && OBJ_WRITER.stringno == 1)
		caster_free(global.currentsong)
}
if (con == 381 && instance_exists(OBJ_WRITER) == false)
{
	caster_free(all)
	con = 382
	alarm[4] = 45
}
if (con == 383)
{
	global.currentsong = caster_load("music/prebattle1.ogg")
	caster_loop(global.currentsong, 0.9, 0.22)
	shake = 1
	global.typer = 99
	global.msg[0] = scr_gettext("obj_storybattle_gen_1383")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1384")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1385")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1386")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1387")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1388")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1389")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1390")
	global.msg[8] = scr_gettext("obj_storybattle_gen_1391")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 384
}
if (con == 384 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno == 5)
		global.faceemotion = 10
}
if (con == 384 && instance_exists(OBJ_WRITER) == false)
	off = 1
if (con == 390)
{
	shake = 0.75
	global.typer = 99
	global.msc = 0
	global.msg[0] = scr_gettext("obj_storybattle_gen_1412")
	global.msg[1] = scr_gettext("obj_storybattle_gen_1413")
	global.msg[2] = scr_gettext("obj_storybattle_gen_1414")
	global.msg[3] = scr_gettext("obj_storybattle_gen_1415")
	global.msg[4] = scr_gettext("obj_storybattle_gen_1416")
	global.msg[5] = scr_gettext("obj_storybattle_gen_1417")
	global.msg[6] = scr_gettext("obj_storybattle_gen_1418")
	global.msg[7] = scr_gettext("obj_storybattle_gen_1419")
	scr_blcon_x((floweyx + 90), (floweyy - 10))
	con = 301
}
