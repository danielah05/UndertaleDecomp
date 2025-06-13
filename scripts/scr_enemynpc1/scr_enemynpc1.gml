/// @func		scr_enemynpc1()
/// @desc		Remove NPCs depending on Plot and Kill Count (Snowdin)
/// @returns	{bool}
function scr_enemynpc1()
{
	if (global.plot > 100 && FL_TundraKillsCounter == 0)
		return true;
	else
		return false;
}
