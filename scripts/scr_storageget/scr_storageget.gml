/// @func	scr_storageget(null_item_set, box_flag_offset)
/// @param	{Constant.Items}	null_item_set
/// @param	{real}				box_flag_offset		The flag index for the start of the boxes
function scr_storageget(_null_item_set, _box_flag_offset)
{
	i = 0
	loop = true
	noroom = false
	global.flag[(_box_flag_offset + (DimensionalBoxSize - 1))] = 999
	while (loop == true)
	{
	    if (global.flag[(i + _box_flag_offset)] == Items.Null)
	    {
	        global.flag[(i + _box_flag_offset)] = _null_item_set
	        break
	    }
	    else if (i == (DimensionalBoxSize - 1))
	    {
	        scr_itemnospace()
	        break
	    }
	    else
	    {
	        i += 1
	        continue
	    }
	}
	scr_itemnameb()
	scr_storagename(DimensionBoxAItemStart)
}
