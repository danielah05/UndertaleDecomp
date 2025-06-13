if (con == 0 && global.interact == 0)
{
	snd_play(snd_escaped)
	if (x < 1000)
		con = 5
	if (x > 1000)
		con = 10
	global.interact = 1
}
