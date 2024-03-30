function murdererlv2()
{
	if (FL_RuinsKillsCounter >= 20 && FL_TorielStatus == TorielStatus.Killed)
	    return 1;
	else
	    return 0;
}
