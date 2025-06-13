/// @func		ossafe_file_exists(filepath)
/// @desc		Safely checks if a file exists
/// @param		{string}	filepath	The filepath of the file to check
/// @returns	{bool}
function ossafe_file_exists(_filepath)
{
	if (global.osflavor <= OSFlavors.Mac)
		return file_exists(_filepath);
	else
		return (!(is_undefined(ds_map_find_value(global.savedata, _filepath))));
}
