/// @func			scr_itemremove(item)
/// @desc			Attempts to remove an item to the player, check "removed" for success
/// @param	{Real}	item
function scr_itemremove(_item)
{
	removed = false
	scr_itemcheck(_item)
	if (haveit == true)
	{
		loc = 0
		skip = false
		if (global.item[0] == _item && skip == false)
		{
			loc = 0
			skip = true
		}
		if (global.item[1] == _item && skip == false)
		{
			loc = 1
			skip = true
		}
		if (global.item[2] == _item && skip == false)
		{
			loc = 2
			skip = true
		}
		if (global.item[3] == _item && skip == false)
		{
			loc = 3
			skip = true
		}
		if (global.item[4] == _item && skip == false)
		{
			loc = 4
			skip = true
		}
		if (global.item[5] == _item && skip == false)
		{
			loc = 5
			skip = true
		}
		if (global.item[6] == _item && skip == false)
		{
			loc = 6
			skip = true
		}
		if (global.item[7] == _item && skip == false)
		{
			loc = 7
			skip = true
		}
		scr_itemshift(loc, 0)
		removed = true
	}
}
