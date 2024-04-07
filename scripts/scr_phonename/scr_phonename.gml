/// @func	scr_phonename()
/// @desc	Gets phone name using ID
function scr_phonename()
{
	for (i = 0; i < InventorySize; i += 1)
	{
	    itemid = global.phone[i]
	    global.phonename[i] = scr_gettext(("phonename_" + string(itemid)))
	    if (itemid == 210 && FL_IncludeUndyneInPapyrusCalls > 0)
	        global.phonename[i] = scr_gettext("phonename_210b")
	}
}
