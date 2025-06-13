if (con == 0)
{
	if (facer == 1 && instance_exists(obj_time))
	{
		if obj_time.left
		{
			x -= 60
			repeat (3)
			{
				if collision_point((x + 9), (y + 35), obj_nospear, 1, 1)
					x += 20
			}
		}
		if obj_time.right
		{
			x += 60
			repeat (3)
			{
				if collision_point((x + 9), (y + 35), obj_nospear, 1, 1)
					x -= 20
			}
		}
		if obj_time.down
		{
			y += 60
			repeat (3)
			{
				if collision_point((x + 9), (y + 35), obj_nospear, 1, 1)
					y -= 20
			}
		}
		if obj_time.up
		{
			y -= 60
			repeat (3)
			{
				if collision_point((x + 9), (y + 35), obj_nospear, 1, 1)
					y += 20
			}
		}
		facer = 0
	}
	if collision_point((x + 9), (y + 35), obj_nospear, 1, 1)
		instance_destroy()
	image_alpha += 0.07
	if (image_alpha > 0.9)
	{
		image_alpha = 1
		con = 1
		alarm[4] = 10
	}
}
if (con == 2)
{
	spearbud = instance_create(x, y, obj_npc_marker)
	spearbud.y += 9
	spearbud.y -= 9
	spearbud.sprite_index = sprite_index
	spearbud.image_speed = 0.5
	spearbud.visible = true
	with (spearbud)
		scr_depth()
	con = 2.5
}
if (con == 2.5)
{
	if (spearbud.image_index >= 1.5 && active == true)
	{
		if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_mainchara, 0, 1)
			event_user(3)
		if (sounded == 0 && instance_exists(obj_speartilegen))
		{
			obj_speartilegen.sound2 = snd_sparkle1
			sounded = 1
		}
	}
	if (spearbud.image_index >= 3)
	{
		spearbud.image_speed = 0
		con = 3
		alarm[4] = 5
	}
}
if (con == 4)
{
	image_alpha -= 0.1
	spearbud.image_alpha = image_alpha
	if (image_alpha < 0.1)
	{
		with (spearbud)
			instance_destroy()
		instance_destroy()
	}
}
if (duty == 1)
{
	x = obj_mainchara.x
	y = obj_mainchara.y
	duty = 0
	move_snap(20, 20)
}
if (active == 2)
{
	if (con >= 2.5)
	{
		if instance_exists(spearbud)
		{
			with (spearbud)
				instance_destroy()
		}
	}
	instance_destroy()
}
