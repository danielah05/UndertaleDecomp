/// @func			scr_storagename(box_flag_offset)
/// @desc			Sets the global itemlist name to the names of the items in the box
/// @param	{real}	box_flag_offset		The flag index for the start of the boxes
function scr_storagename(_box_flag_offset)
{
	for (i = _box_flag_offset; i < (_box_flag_offset + DimensionalBoxSize); i += 1)
		global.itemname[(i - _box_flag_offset)] = " "
	for (i = 0; i < 11; i += 1)
	{
		itemid = global.flag[(_box_flag_offset + i)]
		scr_itemnamelist()
	}
}
