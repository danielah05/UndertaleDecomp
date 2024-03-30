function scr_tempload()
{
	filechoicebk3 = global.filechoice
	global.filechoice = 9
	scr_load()
	global.filechoice = filechoicebk3
}
