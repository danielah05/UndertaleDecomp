if (con == 1)
{
	global.interact = 1
	fade = instance_create(0, 0, obj_musfadeout)
	fade.fadespeed = 0.02
	global.currentsong = caster_load("music/undynetheme.ogg")
	walknoise = caster_load("music/snowwalk.ogg")
	caster_set_panning(walknoise, 1)
	caster_loop(walknoise, 1, 1)
	undyne.hspeed = -1
	con = 2
	obj_fearundynenpc1.w = 1
	obj_fearundynenpc2.w = 1
}
if (con == 2)
{
	if (undyne.x < 340)
	{
		caster_loop(global.currentsong, 0.5, 0.6)
		caster_pause(walknoise)
		undyne.hspeed = 0
		con = 2.5
		alarm[4] = 60
	}
}
if (con == 3.5)
{
	remembery = undyne.y
	if (undyne.y >= (obj_mainchara.y - 20))
	{
		undyne.vspeed = -1
		undyne.sprite_index = undyne.usprite
	}
	if (undyne.y < (obj_mainchara.y - 20))
	{
		undyne.vspeed = 1
		undyne.sprite_index = undyne.dsprite
	}
	con = 4
}
if (con == 4)
{
	if (abs((undyne.y - (obj_mainchara.y - 20))) < 5)
	{
		undyne.vspeed = 0
		undyne.sprite_index = undyne.lsprite
		undyne.direction = 180
		alarm[4] = 90
		con = 4.1
	}
}
if (con == 5.1)
{
	undyne.hspeed = -0.5
	con = 4.2
	alarm[4] = 20
}
if (con == 5.2)
{
	undyne.hspeed = 0
	con = 4.3
	undyne.x = floor(undyne.x)
	alarm[4] = 60
}
if (con == 5.3)
{
	undyne.hspeed = -0.5
	alarm[4] = 50
	con = 4.4
}
if (con == 5.4)
{
	undyne.hspeed = 0
	alarm[4] = 120
	con = 5
}
if (con == 6)
{
	if (undyne.y > remembery)
	{
		undyne.vspeed = -2
		undyne.sprite_index = undyne.usprite
	}
	if (undyne.y < remembery)
	{
		undyne.vspeed = 2
		undyne.sprite_index = undyne.dsprite
	}
	con = 7
}
if (con == 7)
{
	if (abs((remembery - undyne.y)) < 5)
	{
		undyne.vspeed = 0
		con = 6.1
		undyne.hspeed = 1
		undyne.sprite_index = undyne.rsprite
		alarm[4] = 30
	}
}
if (con == 7.1)
{
	undyne.hspeed = 0
	con = 6.2
	alarm[4] = 50
	undyne.image_index = 0
}
if (con == 7.2)
{
	undyne.sprite_index = undyne.lsprite
	con = 6.3
	alarm[4] = 70
}
if (con == 7.3)
{
	undyne.sprite_index = undyne.rsprite
	con = 6.4
	alarm[4] = 40
}
if (con == 7.4)
{
	caster_resume(walknoise)
	mus = instance_create(0, 0, obj_musfadeout)
	mus.fadespeed = 0.01
	global.currentsong = walknoise
	tt = instance_create(0, 0, obj_musfadeout)
	tt.fadespeed = 0.01
	undyne.hspeed = 1
	con = 8
}
if (con == 8)
{
	if (undyne.x > 500)
	{
		con = 9
		global.interact = 0
	}
}
if (con == 9)
{
	if (collision_rectangle(180, 100, 200, 200, obj_mainchara, 0, 1) || collision_rectangle(340, 100, 360, 200, obj_mainchara, 0, 1))
	{
		caster_free(all)
		global.currentsong = caster_load("music/waterfall.ogg")
		global.interact = 1
		con = 10
	}
}
if (con == 10)
{
	if (obj_mainchara.y > 120)
	{
		mkid.y = 90
		up = 0
	}
	else
	{
		mkid.y = 130
		up = 1
	}
	if (obj_mainchara.x < 240)
	{
		left = 1
		mkid.hspeed = -4
	}
	else
	{
		left = 0
		mkid.hspeed = 4
	}
	con = 11
}
if (con == 11)
{
	if (abs((mkid.x - (obj_mainchara.x + 10))) < 15)
	{
		mkid.hspeed = 0
		con = 12
		if (up == 1)
			mkid.sprite_index = mkid.usprite
		if (up == 0)
			mkid.sprite_index = mkid.dsprite
		mkid.image_index = 0
		alarm[4] = 30
	}
}
if (con == 13)
{
	con = 14
	mkid.sprite_index = mkid.rsprite
	alarm[4] = 30
}
if (con == 15)
{
	if (up == 1)
		mkid.sprite_index = mkid.usprite
	if (up == 0)
		mkid.sprite_index = mkid.dsprite
	con = 16
	alarm[4] = 30
}
if (con == 17)
{
	if (up == 1)
		mkid.sprite_index = mkid.utsprite
	if (up == 0)
		mkid.sprite_index = mkid.dtsprite
	mkid.myinteract = 3
	global.typer = 5
	global.msc = 0
	global.msg[0] = "* Yo..^1. did you see the&  way she was staring at&  you...?/"
	global.msg[1] = "* That.../"
	global.msg[2] = "* ... was AWESOME!/"
	global.msg[3] = "* I'm SOOOO jealous!/"
	global.msg[4] = "* What'd you do to get her&  attention...^1?&* Ha ha./"
	global.msg[5] = "* C'mon^1!&* Let's go watch her beat&  up some bad guys!/%%"
	instance_create(0, 0, obj_dialoguer)
	con = 18
}
if (con == 18 && instance_exists(OBJ_WRITER) == false)
{
	mkid.hspeed = 4
	mkid.myinteract = 0
	mkid.image_speed = 0.3
	mkid.sprite_index = mkid.rsprite
	con = 19
	alarm[4] = 60
}
if (con == 20)
{
	global.interact = 0
	caster_loop(global.currentsong, 0.8, 1)
	con = 21
	global.plot = 106
	instance_destroy()
}
