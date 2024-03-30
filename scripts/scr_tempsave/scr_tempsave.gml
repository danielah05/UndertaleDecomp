/// @func	scr_tempsave()
/// @desc	Quick saves
function scr_tempsave()
{
	filechoicebk2 = global.filechoice
	global.filechoice = 9
	scr_saveprocess()
	global.filechoice = filechoicebk2
}
