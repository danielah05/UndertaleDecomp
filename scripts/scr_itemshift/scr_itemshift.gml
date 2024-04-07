/// @func	scr_itemshift(itemIndex, hpRecovered)
/// @desc	Shifts the items down starting from the specified index
/// @arg	itemIndex
/// @arg	hpRecovered
function scr_itemshift(_itemIndex, _hpRecovered)
{
	global.item[8] = _hpRecovered
	for (i = _itemIndex; i < InventorySize; i += 1)
	    global.item[i] = global.item[(i + 1)]
	scr_itemnameb()
	scr_itemname()
}
