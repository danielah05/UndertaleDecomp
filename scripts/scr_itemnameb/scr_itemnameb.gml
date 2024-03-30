/// @func	scr_itemnameb()
/// @desc	Updates the item name table (for battles)
function scr_itemnameb()
{
	for (var i = 0; i < InventorySize; i++)
	{
	    var itemid = global.item[i]
	    if (global.seriousbattle == true)
	        var name = scr_gettext(("item_names_" + string(itemid)))
	    else
	        name = scr_gettext(("item_nameb_" + string(itemid)))
	    global.itemnameb[i] = name
	}
}
