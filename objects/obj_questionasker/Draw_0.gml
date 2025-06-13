draw_sprite_ext(sprite_index, round(image_index), ((x - shake) + random((shake * 2))), ((y - shake) + random((shake * 2))), 2, 2, 0, c_white, 1)
if (phase == -1)
	sprite_index = spr_alphyshelper
if (phase > 0 && con == 0)
	sprite_index = spr_alphyshelper_lookup
if (phase == 2 && quiztimer < 280)
{
	if (correct == 0)
		sprite_index = spr_alphyshelper_a
	if (correct == 1)
		sprite_index = spr_alphyshelper_b
	if (correct == 2)
		sprite_index = spr_alphyshelper_c
	if (correct == 3)
		sprite_index = spr_alphyshelper_d
	if (q == 7)
		sprite_index = spr_alphyshelper_confused
}
if (phase == 2 && quiztimer > 320)
	sprite_index = spr_alphyshelper_confused
if (phase > 2 && q < 10)
{
	sprite_index = spr_alphyshelper_shock
	obj_mettatonb_body.arms = spr_mettatonb_arms4
	if (correct == answer)
	{
		obj_mettatonb_body.arms = spr_mettatonb_arms3
		sprite_index = spr_alphyshelper_thumbsup
		if (q == 7)
			sprite_index = spr_alphyshelper_confused
	}
}
if (q == 8 && quiztimer < 300)
{
	if ((quiztimer % 2) == 0)
		mettamt += 1
	if (instance_exists(obj_mettatonnn_writer) == false && phase == 2)
		instance_create(x, y, obj_mettatonnn_writer)
}
if (q == 9 && alarm[4] < 140 && con == 0)
{
	sprite_index = spr_alphyshelper_tooexcited
	alarm[4] = -2
	global.msc = 0
	image_speed = 0.3
	global.typer = 52
	global.msg[0] = scr_gettext("obj_questionasker_538")
	global.msg[1] = scr_gettext("obj_questionasker_539")
	global.msg[2] = scr_gettext("obj_questionasker_540")
	global.msg[3] = scr_gettext("obj_questionasker_541")
	global.msg[4] = scr_gettext("obj_questionasker_542")
	global.msg[5] = scr_gettext("obj_questionasker_543")
	scr_blcon((x - 10), (y - 120), 2)
	con = 1
}
if (con == 1)
{
	go = 0
	if (instance_exists(OBJ_WRITER) == false)
		go = 1
	if (instance_exists(OBJ_WRITER) == true)
	{
		if (OBJ_WRITER.stringno == 5)
			go = 1
	}
	if (go == 1)
	{
		image_speed -= 0.004
		if (image_speed <= 0)
		{
			con = 2
			alarm[7] = 60
			sprite_index = spr_alphyshelper_excited2
		}
	}
}
if (con == 3)
{
	global.typer = 51
	phase = -2
	global.msg[0] = scr_gettext("obj_questionasker_566")
	global.msg[1] = scr_gettext("obj_questionasker_567")
	global.msg[2] = scr_gettext("obj_questionasker_568")
	global.msg[3] = scr_gettext("obj_questionasker_569")
	global.msg[4] = scr_gettext("obj_questionasker_570")
	con = 4
	sprite_index = spr_alphyshelper_excited2
	scr_blcon((obj_mettatonb_body.x + 95), (obj_mettatonb_body.y - 100), 3)
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
	image_speed = 0.2
	sprite_index = spr_alphyshelper_shock2
	con = 5
	event_user(0)
}
if (con == 4)
{
	if instance_exists(OBJ_WRITER)
	{
		if (OBJ_WRITER.stringno == 1)
			sprite_index = spr_alphyshelper_shakehead
	}
	if (OBJ_WRITER.stringno == 3)
		sprite_index = spr_alphyshelper_embarrass
	image_speed = 0.1
	if (OBJ_WRITER.stringno == 4)
		sprite_index = spr_alphyshelper_shock
}
if (con == 7)
{
	sprite_index = spr_alphyshelper_shockembarrass
	global.typer = 51
	phase = -2
	global.msg[0] = scr_gettext("obj_questionasker_598")
	global.msg[1] = scr_gettext("obj_questionasker_599")
	global.msg[2] = scr_gettext("obj_questionasker_600")
	global.msg[3] = scr_gettext("obj_questionasker_601")
	global.msg[4] = scr_gettext("obj_questionasker_602")
	con = 30
	if (answer == 0)
	{
		global.msg[0] = scr_gettext("obj_questionasker_607")
		global.msg[1] = scr_gettext("obj_questionasker_608")
		global.msg[2] = scr_gettext("obj_questionasker_609")
		global.msg[3] = scr_gettext("obj_questionasker_610")
		fsgsfgsx = "LOOLLLL IF YOU CAME TO THIS PART OF THE CODE TO SEE WHO I HAVE A CRUSH ON YOURE OUT OF LUCK"
		global.msg[4] = scr_gettext("obj_questionasker_613")
		global.msg[5] = scr_gettext("obj_questionasker_614")
		global.msg[6] = scr_gettext("obj_questionasker_615")
		global.msg[7] = scr_gettext("obj_questionasker_616")
	}
	if (answer == 1)
	{
		global.msg[0] = scr_gettext("obj_questionasker_624")
		global.msg[1] = scr_gettext("obj_questionasker_625")
		global.msg[2] = scr_gettext("obj_questionasker_626")
		global.msg[3] = scr_gettext("obj_questionasker_627")
		global.msg[4] = scr_gettext("obj_questionasker_628")
		global.msg[5] = scr_gettext("obj_questionasker_629")
		global.msg[6] = scr_gettext("obj_questionasker_630")
		global.msg[7] = scr_gettext("obj_questionasker_631")
		global.msg[8] = scr_gettext("obj_questionasker_632")
		global.msg[9] = scr_gettext("obj_questionasker_633")
		global.msg[10] = scr_gettext("obj_questionasker_634")
	}
	if (answer == 2)
	{
		sprite_index = spr_alphyshelper_confused
		shake = 0
		global.msg[0] = scr_gettext("obj_questionasker_642")
		global.msg[1] = scr_gettext("obj_questionasker_643")
		global.msg[2] = scr_gettext("obj_questionasker_644")
		global.msg[3] = scr_gettext("obj_questionasker_645")
		global.msg[4] = scr_gettext("obj_questionasker_646")
		global.msg[5] = scr_gettext("obj_questionasker_647")
		global.msg[6] = scr_gettext("obj_questionasker_648")
		global.msg[7] = scr_gettext("obj_questionasker_649")
		global.msg[8] = scr_gettext("obj_questionasker_650")
		global.msg[9] = scr_gettext("obj_questionasker_651")
	}
	if (answer == 3)
	{
		sprite_index = spr_alphyshelper_thumbsup
		image_speed = 0.2
		global.msg[0] = scr_gettext("obj_questionasker_657")
		global.msg[1] = scr_gettext("obj_questionasker_658")
		global.msg[2] = scr_gettext("obj_questionasker_659")
		global.msg[3] = scr_gettext("obj_questionasker_660")
		global.msg[4] = scr_gettext("obj_questionasker_661")
		global.msg[5] = scr_gettext("obj_questionasker_662")
		global.msg[6] = scr_gettext("obj_questionasker_663")
		global.msg[7] = scr_gettext("obj_questionasker_664")
		global.msg[8] = scr_gettext("obj_questionasker_665")
		global.msg[9] = scr_gettext("obj_questionasker_666")
		con = 20
	}
	if (con != 20)
		shake = 1
	scr_blcon((obj_mettatonb_body.x + 95), (obj_mettatonb_body.y - 100), 3)
}
if (con == 20 && instance_exists(OBJ_WRITER) == true)
{
	if (OBJ_WRITER.stringno == 2)
		sprite_index = spr_alphyshelper_confused
	if (OBJ_WRITER.stringno == 4)
		sprite_index = spr_alphyshelper_embarrass
	if (OBJ_WRITER.stringno == 8)
		sprite_index = spr_alphyshelper_confused
}
if (con == 20 && instance_exists(OBJ_WRITER) == false)
{
	con = 21
	sprite_index = spr_alphyshelper
	global.typer = 52
	global.msg[0] = scr_gettext("obj_questionasker_691")
	global.msg[1] = scr_gettext("obj_questionasker_692")
	global.msg[2] = scr_gettext("obj_questionasker_693")
	scr_blcon((x - 10), (y - 120), 2)
}
if (con == 21 && instance_exists(OBJ_WRITER) == false)
{
	sprite_index = spr_alphyshelper_embarrass
	global.typer = 51
	phase = -2
	global.msg[0] = scr_gettext("obj_questionasker_704")
	global.msg[1] = scr_gettext("obj_questionasker_705")
	global.msg[2] = scr_gettext("obj_questionasker_706")
	global.msg[3] = scr_gettext("obj_questionasker_707")
	con = 22
	scr_blcon((obj_mettatonb_body.x + 95), (obj_mettatonb_body.y - 100), 3)
}
if (con == 22 && instance_exists(OBJ_WRITER) == false)
{
	sprite_index = spr_alphyshelper
	caster_pause(global.batmusic)
	con = 23
	alarm[7] = 150
}
if (con == 24)
{
	sprite_index = spr_alphyshelper_embarrass
	caster_resume(global.batmusic)
	con = 30
	global.msg[0] = scr_gettext("obj_questionasker_725")
	scr_blcon((obj_mettatonb_body.x + 95), (obj_mettatonb_body.y - 100), 3)
}
if (con == 30 && instance_exists(OBJ_WRITER) == false)
{
	with (obj_mettatonb_body)
		event_user(1)
	alarm[7] = 20
	con = 31
}
if (con == 32 && instance_exists(OBJ_WRITER) == false)
{
	shake = 0
	obj_mettatonb_body.arms = spr_mettatonb_arms2
	sprite_index = spr_alphyshelper
	global.typer = 51
	phase = -2
	if instance_exists(obj_answernodule)
	{
		with (obj_answernodule)
			instance_destroy()
	}
	global.msg[0] = scr_gettext("obj_questionasker_745")
	global.msg[1] = scr_gettext("obj_questionasker_746")
	global.msg[2] = scr_gettext("obj_questionasker_747")
	global.msg[3] = scr_gettext("obj_questionasker_748")
	global.msg[4] = scr_gettext("obj_questionasker_749")
	global.msg[5] = scr_gettext("obj_questionasker_750")
	global.msg[6] = scr_gettext("obj_questionasker_751")
	global.msg[7] = scr_gettext("obj_questionasker_752")
	global.msg[8] = scr_gettext("obj_questionasker_753")
	global.msg[9] = scr_gettext("obj_questionasker_754")
	global.msg[10] = scr_gettext("obj_questionasker_755")
	con = 34
	scr_blcon((obj_mettatonb_body.x - 320), (obj_mettatonb_body.y - 120), 1)
}
if (con == 34 && instance_exists(OBJ_WRITER) == false)
{
	obj_mettatonb_body.arms = spr_none
	con = 35
	obj_mettatonb_body.siner = 0
	obj_mettatonb_body.sineron = 0
	obj_mettatonb_body.sprite_index = spr_mettatonb_armsin
	obj_mettatonb_body.image_index = 0
	obj_mettatonb_body.image_speed = 0.25
}
if (con == 35)
{
	if (obj_mettatonb_body.image_index >= 5)
	{
		con = 36
		alarm[7] = 10
		obj_mettatonb_body.image_speed = 0
	}
}
if (con == 37)
{
	obj_mettatonb_body.shaker = 2
	con = 38
	alarm[7] = 25
}
if (con == 39)
{
	obj_mettatonb_body.image_speed = 0.334
	obj_mettatonb_body.sprite_index = spr_mettatonb_rocketoff
	obj_mettatonb_body.gravity = -0.4
	obj_mettatonb_body.gravity_direction = 270
	con = 40
	alarm[7] = 20
}
if (con == 41)
{
	con = 42
	alarm[7] = 40
	sprite_index = spr_alphyshelper_lookup
}
if (con == 43)
{
	instance_create(x, y, obj_unfader)
	alarm[9] = 12
	con = 44
}
if (phase >= 1 && phase < 3)
{
	obj_mettatonb_body.arms = spr_mettatonb_arms1
	draw_set_color(c_white)
	if (q == 10)
		draw_set_color(old_make_color_hsv(0, 0, 21165))
	scr_setfont(fnt_main)
	var xx = 205
	var yy = 50
	var scale = 1
	var angle = 0
	if (q == 4)
	{
		xx -= 35
		yy -= 30
		scale = 0.5
		angle = 6
	}
	if (global.language == "ja")
	{
		if (q == 1 || q == 7)
			xx -= 10
		if (q == 5 || q == 8 || q == 10)
			yy -= 25
		if (q == 4)
			xx -= 23
		if (q == 9)
		{
			xx -= 36
			yy -= 40
		}
	}
	draw_text_transformed((xx + round(random(1))), (yy + round(random(1))), string_hash_to_newline(qtext), scale, scale, angle)
}
if (phase == 2)
{
	if (q != 10 && q != 9)
		quiztimer -= 1
	if (q == 7)
		quiztimer += 2
	drawtime = ceil((quiztimer / 10))
	draw_set_color(c_red)
	scr_setfont(fnt_main)
	if (drawtime > 0)
		draw_text(300, 260, string_hash_to_newline(drawtime))
	else
		phase = 3
}
if (phase == 3)
{
	global.msc = 0
	global.typer = 51
	if (q != 10)
	{
		if instance_exists(obj_mettatonnn_writer)
		{
			with (obj_mettatonnn_writer)
				instance_destroy()
		}
		if instance_exists(obj_zoomaton)
		{
			with (obj_zoomaton)
				event_user(0)
		}
		alarm[6] = 4
		if (correct == answer && q != 7)
		{
			snd_play(snd_dumbvictory)
			repeat (60)
				instance_create(random(640), -10, obj_confetti)
		}
		if (q == 7)
			snd_play(snd_wrongvictory)
		phase = 4
		alarm[4] = 70
	}
	else
	{
		correct = answer
		phase = 4
		con = 6
		snd_play(snd_bell)
		alarm[7] = 30
	}
}
if (phase == 5)
{
	if instance_exists(OBJ_WRITER)
	{
		with (OBJ_WRITER)
			instance_destroy()
	}
	if instance_exists(obj_shockermaker)
	{
		with (obj_shockermaker)
			instance_destroy()
	}
	global.mnfight = 3
	phase = -1
	obj_mettatonb_body.arms = spr_mettatonb_arms2
	with (obj_mettatonb_body)
		event_user(1)
	with (obj_answernodule)
		instance_destroy()
}
