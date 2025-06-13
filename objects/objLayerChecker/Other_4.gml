return; // Vultu: I don't think we need this.
show_debug_message("Performing room layer check")
var a = layer_get_all()
for (var i = 0; i < (array_length(a) - 1); i++)
{
	var ainame = layer_get_name(a[i])
	var ainame2 = layer_get_name(a[(i + 1)])
	show_debug_message(((((((ainame + " at depth ") + string(layer_get_depth(a[i]))) + " against ") + ainame2) + " at depth ") + string(layer_get_depth(a[(i + 1)]))))
	if (layer_get_depth(a[i]) == layer_get_depth(a[(i + 1)]))
	{
		show_debug_message(((("Possible clash between " + string(ainame)) + " and ") + string(ainame2)))
		if (string_count("Compatibility_Instances", ainame) && string_count("Compatibility_Tiles", ainame2))
		{
			show_debug_message("Performing depth manipulation")
			layer_depth(a[i], (layer_get_depth(a[i]) + 1))
		}
	}
}
