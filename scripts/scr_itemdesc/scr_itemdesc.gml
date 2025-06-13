/// @func	scr_itemdesc(item_idm)
/// @desc	Grabs the description from an item to display
/// @arg	{real}	item_id	The ID of the item
function scr_itemdesc(_item_id)
{
	global.msg[0] = scr_gettext("scr_itemdesc_2")
	var i = 0
	while 1
	{
		var desc = scr_gettext(((("item_desc_" + string(_item_id)) + "_") + string(i)))
		if (string_length(desc) == 0)
			break
		else
		{
			global.msg[i] = desc
			i++
			continue
		}
	}
}
