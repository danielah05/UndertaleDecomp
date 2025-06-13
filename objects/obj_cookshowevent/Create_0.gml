con = 0
image_yscale = 5
if (global.plot > 134)
	instance_destroy()
else
{
	obj_mainchara.cutscene = true
	view_yview_set(0, 240)
	instance_create(0, 0, obj_musfadeout)
	view_target_set(0, noone)
}
yoffset1 = 240
