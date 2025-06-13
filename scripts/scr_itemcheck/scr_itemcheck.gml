/// @func			scr_itemcheck(item)
/// @desc			Checks the inventory of the player for an item, check "haveit" and "itemcount" for success
/// @arg	{Real}	item
function scr_itemcheck(_item)
{
	haveit = false
	itemcount = 0
	for (i = 0; i < InventorySize; i += 1)
	{
		if (global.item[i] == _item)
			haveit = true
		if (global.item[i] == _item)
			itemcount += 1
	}
}
