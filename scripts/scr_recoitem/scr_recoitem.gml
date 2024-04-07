/// @func	scr_recoitem(hp)
/// @desc	Called when recovering HP with an item
/// @arg	{real}	hp	Amount of HP to recover
function scr_recoitem(_hp)
{
	if (global.weapon == Items.BurntPan)
	    scr_recover(_hp + 4)
	else
	    scr_recover(_hp)
	global.item[8] = recovered // Vultu: Setting item 8 to our hp recoverd...?
	FL_UsedRecoveryItem = true
	if (maxedout == 1)
	    global.item[8] = 9999 // Vultu: What the actual fuck toby, why
	scr_writetext(11, "x", 0, 0)
}
