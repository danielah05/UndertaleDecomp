/// @func		murdererlv2()
/// @desc		Checks if Ruins kill counter is ">= 20" and if Toriel is killed (Unused)
/// @returns	{bool}
function murdererlv2()
{
	if (FL_RuinsKillsCounter >= 20 && FL_TorielStatus == TorielStatus.Killed)
		return 1;
	else
		return 0;
}
