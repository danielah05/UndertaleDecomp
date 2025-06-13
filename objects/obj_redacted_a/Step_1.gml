scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
image_alpha = 0
dist = distance_to_object(obj_mainchara)
if (dist < 20)
{
	if (played == 0 && FL_CurrentNapstablookSong == 0)
	{
		caster_loop(global.currentsong, 0.8, 0.5)
		played = 1
	}
	disto = (10 / (dist + 1))
	if (disto > 1)
		disto = 1
	image_alpha = disto
}
