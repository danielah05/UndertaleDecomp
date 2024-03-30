if (show_collision)
{
	if (instance_exists(obj_solidparent))
		obj_solidparent.visible = true;
	if (instance_exists(obj_diagoparent))
		obj_diagoparent.visible = true;
}
