/// @func		murdererlv1()
/// @desc		Checks if Ruins kill counter is ">= 20"
/// @returns	{bool}
function murdererlv1()
{
	if (FL_RuinsKillsCounter >= 20)
		return 1;
	else
		return 0;
}
