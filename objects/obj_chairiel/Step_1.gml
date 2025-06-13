if (global.plot < 19.9)
{
	if instance_exists(obj_face_torieltalk)
		image_index = obj_face_torieltalk.image_index
	else
		image_index = 0
	scr_npcdir(2)
}
if (global.plot == 19.9 && instance_exists(obj_dialoguer) == false)
{
	sprite_index = spr_chairielgetup
	image_index = 0
	image_speed = 0.2
	global.interact = 1
	global.plot = 20
}
