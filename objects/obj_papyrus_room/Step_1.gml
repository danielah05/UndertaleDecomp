scr_depth(0, 0, 0, 0, 0)
if (fun == false)
{
	if instance_exists(obj_face_papyrus)
		image_index = obj_face_papyrus.image_index
	else if (speed == 0 && path_speed == 0)
		image_index = 0
}
if (dir == 1)
	scr_npcdir(1)
