function textdata_en()
{
	// Daniela: this script is completely differenet compared to the original game for massive compile time improvements.
	// Daniela: if this is something u dislike, i recommend using the vanilla branch instead!!!
	
	// Daniela: clear stuff if it already exists
	if variable_global_exists("text_data_en")
		ds_map_destroy(global.text_data_en);
	// Daniela: load japanese dialog from json file
	global.text_data_en = scr_84_load_map_json(working_directory + "lang\\" + "lang_en.json");
}
