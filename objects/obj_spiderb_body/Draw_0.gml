if instance_exists(obj_uborder)
{
	if (obj_uborder.y < 240)
		y = ((ystart - 4) - (240 - obj_uborder.y))
	else
		y = ystart
}
if (hurt == true)
{
	x = (parent.x + 62)
	siner = 0
	eye[0] = 0
	eye[1] = 0
	eye[2] = 0
	eye[3] = 0
	eye[4] = 0
}
if (pauser == 1)
{
	siner = 0
	eye[0] = 0
	eye[1] = 0
	eye[2] = 0
	eye[3] = 0
	eye[4] = 0
}
draw_sprite_ext(spr_spiderb_upperarm, 0, (x + 14), (((y + 86) + 26) + cos((siner / 5))), -2, 2, ((-(sin((siner / 5)))) * 6), c_white, 1)
draw_sprite_ext(spr_spiderb_shoulder, 0, (x + 42), ((y + 86) + cos((siner / 5))), -2, 2, 0, c_white, 1)
draw_sprite_ext(spr_spiderb_upperarm, 0, (x + 78), (((y + 86) + 26) + cos((siner / 5))), 2, 2, (sin((siner / 5)) * 6), c_white, 1)
draw_sprite_ext(spr_spiderb_shoulder, 0, (x + 50), ((y + 86) + cos((siner / 5))), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_spiderb_hair, 0, (x + 80), ((heady * 1.02) + 18), 2, 2, hairrot, c_white, 1)
draw_sprite_ext(spr_spiderb_hair, 0, (x + 12), ((heady * 1.02) + 18), -2, 2, (-hairrot), c_white, 1)
draw_sprite_ext(spr_spiderb_head, 0, x, heady, 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_spiderb_legs, 0, (x + 30), (y + 162), 2, 2, 0, c_white, 1)
arm = 0
if (sin((siner / 5)) < 0)
	arm = 1
draw_sprite_ext(spr_spiderb_lowarm, arm, (x + 26), ((y + 130) + sin((siner / 5))), 2, 2, ((sin((siner / 5)) * 8) - 8), c_white, 1)
draw_sprite_ext(spr_spiderb_lowarm, arm, (x + 64), ((y + 130) + sin((siner / 5))), -2, 2, ((-((sin((siner / 5)) * 8))) + 8), c_white, 1)
if (mode == 0)
{
	draw_sprite_ext(spr_spiderb_teapot, 0, (x - 22), ((y + 104) + (cos((siner / 5)) * 2)), 2, 2, ((-(sin((siner / 5)))) * 24), c_white, 1)
	draw_sprite_ext(spr_spiderb_midarm, 0, (x + 12), ((y + 116) + (cos((siner / 5)) * 2)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_midarm2, 0, (x + 12), ((y + 130) + (cos((siner / 5)) * 2)), 2, 2, (sin((siner / 5)) * 3), c_white, 1)
}
if (mode == 0)
{
	draw_sprite_ext(spr_spiderb_teapot, 0, (x + 114), ((y + 104) + (cos((siner / 5)) * 2)), -2, 2, ((-(sin((siner / 5)))) * 24), c_white, 1)
	draw_sprite_ext(spr_spiderb_midarm, 0, (x + 80), ((y + 116) + (cos((siner / 5)) * 2)), -2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_midarm2, 0, (x + 80), ((y + 130) + (cos((siner / 5)) * 2)), -2, 2, (sin((siner / 5)) * 3), c_white, 1)
}
if (mode == 1)
{
	draw_sprite_ext(spr_spiderb_teapot, 0, (x - 22), ((y + 104) + (cos((sinert / 5)) * 2)), 2, 2, ((-(sin((sinert / 5)))) * 36), c_white, 1)
	draw_sprite_ext(spr_spiderb_midarm, 0, (x + 12), ((y + 116) + (cos((sinert / 5)) * 2)), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_midarm2, 0, (x + 12), ((y + 130) + (cos((sinert / 5)) * 2)), 2, 2, (sin((sinert / 5)) * 3), c_white, 1)
	draw_sprite_ext(spr_spiderb_teapot, 0, (x + 114), ((y + 104) + (cos((sinert / 5)) * 2)), -2, 2, (sin((sinert / 5)) * 36), c_white, 1)
	draw_sprite_ext(spr_spiderb_midarm, 0, (x + 80), ((y + 116) + (cos((sinert / 5)) * 2)), -2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_midarm2, 0, (x + 80), ((y + 130) + (cos((sinert / 5)) * 2)), -2, 2, (sin((sinert / 5)) * 3), c_white, 1)
}
draw_sprite_ext(spr_spiderb_pants, 0, (x + 20), ((y + 114) + sin((siner / 5))), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_spiderb_shirt, 0, (x + 28), ((y + 92) + (sin((siner / 5)) * 2)), 2, 2, 0, c_white, 1)
if (hurt == false)
{
	draw_sprite_ext(spr_spiderb_eyebig, eye[0], (x + 24), (heady + 42), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_eyemed, eye[1], (x + 30), (heady + 32), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_eyecen, eye[2], (x + 42), (heady + 26), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_eyemed, eye[3], (x + 62), (heady + 32), -2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_eyebig, eye[4], (x + 68), (heady + 42), -2, 2, 0, c_white, 1)
}
if (hurt == true)
{
	draw_sprite_ext(spr_spiderb_eyebig_hurt, eye[0], (x + 24), (heady + 42), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_eyemed_hurt, eye[1], (x + 30), (heady + 32), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_eyecen_hurt, eye[2], (x + 42), (heady + 26), 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_eyemed_hurt, eye[3], (x + 62), (heady + 32), -2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_spiderb_eyebig_hurt, eye[4], (x + 68), (heady + 42), -2, 2, 0, c_white, 1)
}
if instance_exists(obj_uborder)
{
	if (purple > 0)
	{
		purple2 = purple
		if (purple2 >= (obj_dborder.y - obj_uborder.y))
		{
			if (purpletime == 0)
			{
				with (obj_spiderb)
					event_user(2)
				purpletime = 1
				with (obj_spiderb)
					alarm[4] = 60
			}
			purple2 = (obj_dborder.y - obj_uborder.y)
		}
		if (purple > 125 && mode == 1)
			event_user(1)
		draw_set_color(c_purple)
		if (purple > 160)
			draw_set_alpha((1 - ((purple - 160) / 40)))
		if (purple > 210)
			purple = 0
		ossafe_fill_rectangle((obj_lborder.x + 2), (obj_dborder.y - purple2), (obj_rborder.x + 2), (obj_dborder.y + 2))
		draw_set_alpha(1)
	}
}
