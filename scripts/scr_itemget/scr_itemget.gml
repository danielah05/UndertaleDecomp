/// @func			scr_itemget(item)
/// @desc			Attemps to gives an item to the player, check "noroom" for failure
/// @param	{Real}	item
function scr_itemget(_item)
{
	i = 0
	loop = 1
	noroom = 0
	global.item[8] = 999
	while (loop == 1)
	{
	    if (global.item[i] == Items.Null)
	    {
	        global.item[i] = _item
	        break
	    }
	    else if (i == InventorySize)
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
	ossafe_ini_open("undertale.ini")
	var bc = ini_read_real("General", "BC", 0)
	if (bc < 4)
	{
	    bc++
	    ini_write_real("General", "BC", bc)
	    ossafe_ini_close()
	    ossafe_savedata_save()
	}
	else
	    ossafe_ini_close()
	if (bc >= 1)
	    trophy_unlock("item_1")
	if (bc >= 2)
	    trophy_unlock("item_2")
	if (bc >= 3)
	    trophy_unlock("item_3")
	if (bc >= 4)
	    trophy_unlock("item_4")
	scr_itemnameb()
	scr_itemname()
}
