function scr_itemdesc()
{
	global.msg[0] = scr_gettext("scr_itemdesc_2")
	var i = 0
	while 1
	{
	    var desc = scr_gettext(((("item_desc_" + string(argument0)) + "_") + string(i)))
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
