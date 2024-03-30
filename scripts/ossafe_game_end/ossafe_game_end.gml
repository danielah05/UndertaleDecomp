function ossafe_game_end()
{
	if (global.osflavor <= OSFlavors.Mac)
	    game_end()
	else
	    game_restart()
}
