/// @func	scr_itemname()
/// @desc	Updates the item name table (for Overworld)
function scr_itemname()
{
	for (i = 0; i < InventorySize; i += 1)
	{
	    itemid = global.item[i]
	    scr_itemnamelist()
	}
}
