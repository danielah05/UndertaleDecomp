if (global.plot >= 58)
    instance_destroy()
else
{
    conversation = 0
    image_yscale = 999
    sans = instance_create(245, 120, obj_sans_actor)
    papyrus = instance_create(245, 74, obj_papyrus_actor)
    papyrus.sprite_index = spr_papyrus_dt
    sans.sprite_index = spr_sans_u
    computersound = caster_load("music/computer.ogg")
}
look = 0
spinagain = 0
murder = 0
if (scr_murderlv() >= MurderLevel.Lv4DogiKilled && FL_SparedSpecific == 0)
    murder = 1
