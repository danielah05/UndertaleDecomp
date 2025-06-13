if (active == true)
	timer += 1
if (timer >= 5 && timer <= 35)
{
	if (bodyy < 13)
		bodyy += 0.5
}
if (timer >= 80)
{
	leg = 1
	if (bodyy > -15)
		bodyy -= 0.5
}
if (timer >= 120 && timer <= 126)
	legrot_l -= 8
if (timer >= 132 && timer <= 138)
	legrot_l += 8
if (timer >= 146 && timer <= 152)
	legrot_r += 8
if (timer >= 158 && timer <= 164)
	legrot_r -= 8
if (timer == 170)
	timer = 119
main_timer += 1
if (main_timer >= 40 && main_timer <= 160)
{
	tile_layer_shift(900, -1, 0)
	tile_layer_shift(890, 1, 0)
}
if (main_timer == 180)
	active = true
shyren.y += sin((siner / 4))
if (main_timer < 0)
{
	if (view_yview_get(0) > 0)
		view_yview_set(0, (view_yview_get(0) - 4))
	else
		view_yview_set(0, 0)
}
if (main_timer == 90)
{
	t1 = instance_create(20, 160, obj_creditsword)
	t1.text = scr_gettext("castroll_name_mettaton")
	if (global.language == "ja")
		t1.text_xofs = -3
	t1.text2 = scr_gettext("castroll_by_toby")
}
if (main_timer == 250)
	t1.fader = 1
if (main_timer == 260)
{
	var xx = 20
	if (global.language == "ja")
		xx = 5
	t2 = instance_create(xx, 160, obj_creditsword)
	t2.text = scr_gettext("castroll_special_inspiration")
	t2.text2 = scr_gettext("castroll_credit_mettaton")
}
if (main_timer == 430)
	t2.fader = 1
if (main_timer > 450)
{
	view_yview_set(0, (view_yview_get(0) + 4))
	if (view_yview_get(0) > 240)
	{
		global.cast_type = 3
		room_goto(room_end_castroll)
	}
}
