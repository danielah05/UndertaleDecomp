if (y > global.idealborder[3] && vspeed > 0)
	instance_destroy()
if (y < (global.idealborder[2] - sprite_height) && vspeed < 0)
	instance_destroy()
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
	event_user(0)
