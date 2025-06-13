if (global.mnfight != 2)
	movement = 0
else if (movement == 0)
	movement = 1
global.invc -= 1
if (global.invc > 0 || obj_battlecontroller.runaway == 1)
	image_speed = 0.5
else
{
	image_index = 0
	image_speed = 0
}
charge -= 1
if (shot == 1 && control_check_pressed(InteractButton) && global.mnfight == 2)
{
	if (instance_number(obj_heartshot) == false || charge < 0)
	{
		charge = 14
		instance_create((x + 4), (y + 2), obj_heartshot)
		var s = audio_play_sound(snd_heartshot, 80, false)
		audio_sound_gain(s, 0.3, 0)
	}
}
if (sprite_index == spr_confuseheart)
	image_angle += 6
if (confuse == 1 && global.mnfight == 2)
{
	if (x < (obj_lborder.x + 8))
		x = (obj_lborder.x + 8)
	if (y < (obj_uborder.x + 8))
		y = (obj_uborder.x + 8)
	if (x > (obj_rborder.x - 8))
		x = (obj_rborder.x - 8)
	if (y > (obj_dborder.y - 8))
		y = (obj_dborder.y - 8)
}
if (movement == 11)
{
	vspeed = 0
	if obj_time.up
		y -= global.sp
	if obj_time.down
		y += global.sp
	if obj_time.left
	{
		if (jumpstage == 1 && hspeed == 0)
		{
			jumpstage = 2
			hspeed = -6
		}
	}
}
if (movement == 12)
{
	hspeed = 0
	if obj_time.left
		x -= global.sp
	if obj_time.right
		x += global.sp
	if obj_time.down
	{
		if (jumpstage == 1 && vspeed == 0)
		{
			jumpstage = 2
			vspeed = 6
		}
	}
}
if (movement == 13)
{
	vspeed = 0
	if obj_time.up
		y -= global.sp
	if obj_time.down
		y += global.sp
	if obj_time.right
	{
		if (jumpstage == 1 && hspeed == 0)
		{
			jumpstage = 2
			hspeed = 6
		}
	}
}
if (jumpstage == 2 && movement == 2)
{
	if (global.osflavor == OSFlavors.PC)
	{
		if (keyboard_check_direct(vk_up) == false && vspeed <= -1)
			vspeed = -1
	}
	if (global.osflavor != OSFlavors.PC)
	{
		if (obj_time.up == 0 && vspeed <= -1)
			vspeed = -1
	}
	if (vspeed > 0.5 && vspeed < 8)
		vspeed += 0.6
	if (vspeed > -1 && vspeed <= 0.5)
		vspeed += 0.2
	if (vspeed > -4 && vspeed <= -1)
		vspeed += 0.5
	if (vspeed <= -4)
		vspeed += 0.2
}
if (jumpstage == 2 && movement == 11)
{
	if (global.osflavor == OSFlavors.PC)
	{
		if (keyboard_check_direct(vk_left) == false && hspeed <= -1)
			hspeed = -1
	}
	if (global.osflavor != OSFlavors.PC)
	{
		if (obj_time.left == 0 && hspeed <= -1)
			hspeed = -1
	}
	if (hspeed > 0.5 && hspeed < 8)
		hspeed += 0.6
	if (hspeed > -1 && hspeed <= 0.5)
		hspeed += 0.2
	if (hspeed > -4 && hspeed <= -1)
		hspeed += 0.5
	if (hspeed <= -4)
		hspeed += 0.2
}
if (jumpstage == 2 && movement == 12)
{
	if (global.osflavor == OSFlavors.PC)
	{
		if (keyboard_check_direct(vk_down) == false && vspeed >= 1)
			vspeed = 1
	}
	if (global.osflavor != OSFlavors.PC)
	{
		if (obj_time.down == 0 && vspeed >= 1)
			vspeed = 1
	}
	if (vspeed < -0.5 && vspeed > -8)
		vspeed -= 0.6
	if (vspeed < 1 && vspeed >= -0.5)
		vspeed -= 0.2
	if (vspeed < 4 && vspeed >= 1)
		vspeed -= 0.5
	if (vspeed >= 4)
		vspeed -= 0.2
}
if (jumpstage == 2 && movement == 13)
{
	if (global.osflavor == OSFlavors.PC)
	{
		if (keyboard_check_direct(vk_right) == false && hspeed >= 1)
			hspeed = 1
	}
	if (global.osflavor != OSFlavors.PC)
	{
		if (obj_time.right == 0 && hspeed >= 1)
			hspeed = 1
	}
	if (hspeed < -0.5 && hspeed > -8)
		hspeed -= 0.6
	if (hspeed < 1 && hspeed >= -0.5)
		hspeed -= 0.2
	if (hspeed < 4 && hspeed >= 1)
		hspeed -= 0.5
	if (hspeed >= 4)
		hspeed -= 0.2
}
if (ignore_border == 0 && instance_exists(obj_sansb_body) && global.mnfight == 2)
{
	if (x < (global.idealborder[0] + 4))
	{
		x = (global.idealborder[0] + 4)
		event_user(7)
		if (hspeed < 0)
			hspeed = 0
		if (movement == 13)
			jumpstage = 1
	}
	if (y < (global.idealborder[2] + 4))
	{
		y = (global.idealborder[2] + 4)
		event_user(7)
		if (vspeed < 0)
			vspeed = 0
		if (movement == 12)
			jumpstage = 1
	}
	if (x > (global.idealborder[1] - 16))
	{
		x = (global.idealborder[1] - 16)
		event_user(7)
		if (hspeed > 0)
			hspeed = 0
		if (movement == 11)
			jumpstage = 1
	}
	if (y > (global.idealborder[3] - 16))
	{
		y = (global.idealborder[3] - 16)
		event_user(7)
		if (vspeed > 0)
			vspeed = 0
		if (movement == 2)
			jumpstage = 1
	}
}
if instance_exists(obj_battlecontroller)
{
	if (obj_battlecontroller.runaway == 1 && x < -20)
	{
		if (instance_exists(obj_unfader) == false)
			instance_create(0, 0, obj_unfader)
		if (x < -60)
		{
			if (FL_InBattle == false)
			{
				caster_stop(global.batmusic)
				caster_free(global.batmusic)
			}
			room_goto(global.currentroom)
		}
	}
}
