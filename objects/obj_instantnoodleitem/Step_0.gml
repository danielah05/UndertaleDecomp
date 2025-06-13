if instance_exists(OBJ_WRITER)
{
	if (OBJ_WRITER.stringno == 3 && con == 1)
	{
		caster_pause(global.batmusic)
		con = 2
	}
	if (con == 2 && OBJ_WRITER.stringno == 15)
	{
		caster_resume(global.batmusic)
		con = 3
		FL_CookedNoodles = false
		with (OBJ_WRITER)
			instance_destroy()
		global.msg[0] = scr_gettext("obj_instantnoodleitem_85")
		scr_recoitem(4)
		instance_create(0, 0, obj_foodsound)
	}
}
else
	instance_destroy()
