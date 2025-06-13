// Daniela: this code literally never gets executed as this object doesnt instantly get loaded on game start anymore
// Daniela: this causes a game crash on anything that isnt an xbox
if (os_type != os_xboxone)
{
	script_execute(SCR_GAMESTART, 0, 0, 0, 0, 0)
	time = 0
	image_speed = 0
	jjjjjj = 0
	repeat (20)
	{
		global.tempvalue[jjjjjj] = 0
		jjjjjj += 1
	}
	ossafe_savedata_load()
	started = 0
}
