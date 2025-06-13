y = (view_yview_get(0) - sprite_width)
on = 1
amt = 0
siner = 0
reverse = 0
if (instance_find(object_index, 1) != noone)
	reverse = 1
else
	instance_create((view_xview_get(0) + 240), (view_yview_get(0) - sprite_width), object_index)
image_speed = 0.334
