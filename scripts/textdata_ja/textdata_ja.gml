function textdata_ja()
{
	// Daniela: this script is completely differenet compared to the original game for massive compile time improvements.
	// Daniela: if this is something u dislike, i recommend using the vanilla branch instead!!!
	
	// Daniela: clear stuff if it already exists
	if variable_global_exists("text_data_ja")
		ds_map_destroy(global.text_data_ja);
	// Daniela: load japanese dialog from json file
	global.text_data_ja = scr_84_load_map_json(program_directory + "lang\\" + "lang_ja.json");
}
