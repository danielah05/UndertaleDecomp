function ossafe_savedata_load()
{
	if (global.osflavor <= OSFlavors.Mac)
	{
	}
	else
	{
		buffer_async_group_begin("Undertale")
		buffer_async_group_option("showdialog", 0)
		buffer_async_group_option("savepadindex", 0)
		buffer_async_group_option("slottitle", "Undertale")
		buffer_async_group_option("subtitle", "Undertale Save Data")
		global.savedata_buffer = buffer_create(1, buffer_grow, 1)
		buffer_load_async(global.savedata_buffer, "undertale.sav", 0, 1000000)
		global.savedata_async_load = 1
		global.savedata_debuginfo = "load in progress"
		global.savedata_async_id = buffer_async_group_end()
	}
}
