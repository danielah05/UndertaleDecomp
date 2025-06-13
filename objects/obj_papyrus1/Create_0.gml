if (global.plot >= 39)
	instance_destroy()
else
{
	conversation = 0
	image_yscale = 999
	sans = instance_create(240, 110, obj_sans_actor)
	papyrus = instance_create(240, 130, obj_papyrus_actor)
	papyrus.sprite_index = spr_papyrus_ut
	sans.sprite_index = spr_sans_dt
}
murder = 0
if (scr_murderlv() >= MurderLevel.Lv2TorielKilled)
	murder = 1
if (FL_SparedSpecific == 1)
	murder = 0
look = 0
spinagain = 0
show_textbox = 0
temp_dialoguer = -4
