if (active == true)
	timer += 1
if (view_xview_get(0) >= 0 && timer < 20)
	view_xview_set(0, (view_xview_get(0) - 2))
var textx = 168
if (global.language == "ja")
	textx -= 16
if (timer == 0)
{
	t1 = instance_create(textx, 15, obj_creditsword)
	t1.text = scr_gettext("castroll_name_undyne")
	if (global.language == "ja")
		t1.text_xofs = -1
	t1.text2 = scr_gettext("castroll_credit_undyne")
	t2 = instance_create(textx, 150, obj_creditsword)
	t2.text = scr_gettext("castroll_name_alphys")
	if (global.language == "ja")
		t2.text_xofs = -1
	t2.text2 = scr_gettext("castroll_credit_alphys")
}
if (timer == 5)
	shuffle = 1
if (timer == 25)
	shuffle = 0
if (timer == 65)
	shuffle = 1
if (timer == 85)
	shuffle = 0
if (timer == 125)
	shuffle = 1
if (timer == 145)
	shuffle = 0
if (shuffle == 1)
{
	x -= 0.5
	image_index += 0.2
}
if (timer == 170)
	head_index = 1
if (timer == 191 || timer == 193)
	headx += 1
if (timer == 210 || timer == 212)
	headx -= 1
if (timer == 214 || timer == 216)
{
	head_index = 2
	headx -= 1
	heady += 1
}
if (timer == 216)
{
	heart = instance_create((x - 5), (y - 10), obj_npc_marker)
	heart.image_speed = 0.25
	heart.visible = true
	heart.sprite_index = spr_tinygayheart
	heart.vspeed = -0.5
	alphys.image_index = 0
	alphys.image_speed = 0
}
if (timer == 226)
	alphys.sprite_index = spr_alphys_turnred
if (timer > 226 && timer < 246)
	heart.image_alpha -= 0.05
if (timer == 247)
{
	with (heart)
		instance_destroy()
}
if (timer == 246 || timer == 248)
{
	head_index = 1
	heady -= 1
	headx += 1
}
if (timer >= 268 && timer <= 300)
{
	head_index = 3
	if (alphys.image_index < 16)
		alphys.image_index += 0.5
}
if (timer == 320)
{
	alphys.sprite_index = spr_alphys_shock_fall
	alphys.x -= 2
}
if (timer == 321)
	alphys.x -= 2
if (timer == 322)
	alphys.x -= 2
if (timer == 323)
	alphys.x -= 2
if (timer == 324)
	alphys.x -= 1
if (timer == 325)
	alphys.x -= 1
if (timer == 326)
	alphys.x -= 1
if (timer == 327)
	alphys.x -= 1
if (timer == 370)
{
	headsprite = spr_undyne_head_chuckle
	sprite_index = spr_undyne_torso_tap
	siner = 0
}
if (timer >= 370 && timer <= 440)
{
	siner += 1
	heady = (sin((siner / 2)) * 0.8)
	image_index += 0.25
	head_index += 0.25
}
if (timer == 440)
{
	image_index = 0
	headsprite = spr_undyne_head_laugh
	sprite_index = spr_undyne_torso_hit
	alarm[0] = 8
}
if (timer >= 440)
{
	with (t1)
		fader = 1
	with (t2)
		fader = 1
	siner += 1
	heady = ((sin((siner / 2)) * 1.2) + 0.6)
	image_index += 0.25
	head_index += 0.25
}
if (timer >= 500)
{
	view_xview_set(0, (view_xview_get(0) + 4))
	if (view_xview_get(0) >= 160)
	{
		global.cast_type = 2
		room_goto(room_end_castroll)
	}
}
