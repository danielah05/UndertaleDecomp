scr_depth(0, 0, 0, 0, 0)
scr_npcdir(2)
if (s_click == 1 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.stringno == 8)
		caster_free(all)
}
if (s_click == 1 && instance_exists(OBJ_WRITER) == false)
{
	s_click = 2
	snd_play(snd_noise)
	visible = false
	blk = scr_marker(0, 0, spr_pixblk)
	blk.depth = -20
	blk.image_xscale = 3000
	blk.image_yscale = 1000
	global.interact = 1
	alarm[4] = 10
}
if (s_click == 2)
	global.interact = 1
if (s_click == 3)
{
	snd_play(snd_noise)
	with (blk)
		instance_destroy()
	s_click = 4
	with (obj_mainchara)
		uncan = 0
	global.interact = 0
	instance_destroy()
}
