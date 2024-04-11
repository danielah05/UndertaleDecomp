/// @func		scr_enemynpc2()
/// @desc		Remove NPCs depending on Plot and Kill Count (Waterfall)
/// @returns	{bool}
function scr_enemynpc2()
{
	if (global.plot > 121 && FL_WaterfallKillsCounter == 0)
	    return true;
	else
	    return false;
}
