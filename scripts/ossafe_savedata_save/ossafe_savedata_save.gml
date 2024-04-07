function ossafe_savedata_save()
{
	if (global.osflavor <= OSFlavors.Mac)
	{
	}
	else
	{
	    if (global.savedata_async_id >= 0)
	        return 0;
	    buffer_async_group_begin("Undertale")
	    buffer_async_group_option("showdialog", 0)
	    buffer_async_group_option("savepadindex", 0)
	    buffer_async_group_option("slottitle", "Undertale")
	    buffer_async_group_option("subtitle", "Undertale Save Data")
	    var json = json_encode(global.savedata)
	    global.savedata_buffer = buffer_create((string_byte_length(json) + 1), buffer_fixed, 1)
	    buffer_write(global.savedata_buffer, buffer_string, json)
	    buffer_save_async(global.savedata_buffer, "undertale.sav", 0, buffer_get_size(global.savedata_buffer))
	    global.savedata_async_load = 0
	    global.savedata_debuginfo = "save in progress"
	    global.savedata_async_id = buffer_async_group_end()
	}
}
