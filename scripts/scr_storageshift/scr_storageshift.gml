/// @func			scr_storageshift(item_index, item, box_flag_offset)
/// @desc			Shifts the items down starting from the specified index
/// @param	{real}	item_index		The index to insert an item
/// @param	{real}	item			The item to insert
/// @param	{real}	box_flag_offset	The flag index for the start of the boxes
function scr_storageshift(_item_index, _item, _box_flag_offset)
{
	global.flag[(_box_flag_offset + (DimensionalBoxSize - 1))] = _item
	for (i = _item_index; i < (DimensionalBoxSize - 1); i += 1)
	    global.flag[(i + _box_flag_offset)] = global.flag[((i + _box_flag_offset) + 1)]
	scr_itemnameb()
	scr_storagename(DimensionBoxAItemStart)
}
