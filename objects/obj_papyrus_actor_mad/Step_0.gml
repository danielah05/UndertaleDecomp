scr_depth(0, 0, 0, 0, 0)
if (fun == false)
{
	if instance_exists(obj_face_papyrus)
		image_index = obj_face_papyrus.image_index
	else
	{
		myinteract = 0
		if (speed == 0)
		{
			image_index = 0
			image_speed = 0
		}
		if (speed > 0)
			image_speed = 0.2
	}
}
