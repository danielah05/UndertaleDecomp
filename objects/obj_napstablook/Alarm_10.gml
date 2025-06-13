if instance_exists(blcon)
{
	with (blcon)
		instance_destroy()
}
if (image_alpha > 0.1)
{
	image_alpha -= 0.05
	alarm[10] = 1
}
else
{
	caster_stop(global.batmusic)
	caster_free(global.batmusic)
	global.typer = 1
	scr_writetext(0, scr_gettext("obj_napstablook_189"), 0, 0)
	alarm[11] = 1
}
