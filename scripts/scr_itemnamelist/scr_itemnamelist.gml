/// @func	scr_itemnamelist()
/// @desc	Updates the item name `i` from the `itemid`, these are expected to exist in scope
function scr_itemnamelist()
{
	global.itemname[i] = scr_gettext(("item_name_" + string(itemid)))
}
