/// @func		ossafe_file_delete(filepath)
/// @desc		Safely deletes a file
/// @param		{string}	filepath	The filepath of the file to delete
/// @returns	{bool}
function ossafe_file_delete(_filepath)
{
	if (global.osflavor <= OSFlavors.Mac)
	    return file_delete(_filepath);
	else if (!(is_undefined(ds_map_find_value(global.savedata, _filepath))))
	    ds_map_delete(global.savedata, _filepath)
}
