/// @func	ossafe_ini_open(filepath)
/// @desc	Opens a new ini file safely
/// @param	{string}	filepath	The filepath of the ini to open/create
function ossafe_ini_open()
{
	if (global.osflavor <= OSFlavors.Mac)
	    ini_open(argument0)
	else
	{
	    var name = string_lower(argument0)
	    global.current_ini = name
	    var file = ds_map_find_value(global.savedata, name)
	    if is_undefined(file)
	        var data = ""
	    else
	        data = file
	    ini_open_from_string(data)
	}
}
