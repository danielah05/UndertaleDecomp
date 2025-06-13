kk = instance_create((x + 172), (y + 56), obj_eyeflash)
if (type[typeno] == 1)
	kk.image_blend = c_soulblue
if (type[typeno] == 2)
	kk.image_blend = c_orange
if (typeno >= typeamt)
{
	kk.sprite_index = spr_asgore_eyeflash_serious
	kk.image_speed = 0.5
}
