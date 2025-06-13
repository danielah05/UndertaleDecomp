if (global.plot > 66)
	instance_destroy()
else
{
	conversation = 0
	image_yscale = 999
	sans = instance_create(820, 60, obj_sans_actor)
	papyrus = instance_create(820, 90, obj_papyrus_actor)
	papyrus.sprite_index = spr_papyrus_lt
	sans.sprite_index = spr_sans_d
}
look = 0
spinagain = 0
murder = 0
if (scr_murderlv() >= MurderLevel.Lv5GreaterDogKilled && FL_SparedSpecific == 0)
	murder = 1
image_yscale = 4
