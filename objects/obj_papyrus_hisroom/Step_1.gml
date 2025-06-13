scr_depth(0, 0, 0, 0, 0)
if (fun == false)
{
	if instance_exists(obj_face_papyrus)
		image_index = obj_face_papyrus.image_index
	else if (speed == 0 && path_speed == 0)
		image_index = 0
}
if (speed == 0)
	scr_npc_watch(0)
if (intro == 0)
{
	intro = 1
	vspeed = -5
	sprite_index = spr_papyrus_u
	image_speed = 0.25
}
if (intro == 1 && y < 110)
{
	intro = 2
	vspeed = 0
	hspeed = -5
	sprite_index = spr_papyrus_l
}
if (intro == 2 && x < 150)
{
	hspeed = 0
	sprite_index = spr_papyrus_dt
	intro = 3
}
if (intro == 4 && instance_exists(OBJ_WRITER) == false)
{
	instance_create(0, 0, obj_battlerflowey)
	global.interact = 1
	intro = 5
}
if (intro == 5)
	global.interact = 1
