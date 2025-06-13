function scr_gettext()
{
	var text_id = argument[0]
	var text = ds_map_find_value(global.text_data_en, text_id)
	if is_undefined(text)
		text = ""
	if (global.language == "ja")
	{
		var loc_text = ds_map_find_value(global.text_data_ja, text_id)
		if (!is_undefined(loc_text))
			text = loc_text
	}
	for (var i = 1; i <= (string_length(text) - 3); i++)
	{
		if (string_copy(text, i, 2) == "\\[" && string_char_at(text, (i + 3)) == "]")
		{
			var sel = string_char_at(text, (i + 2))
			if (sel == "C")
				var replace = global.charname
			else if (sel == "G")
				replace = string(global.gold)
			else if (sel == "I")
				replace = global.itemname[global.menucoord[1]]
			else if (sel == "1" && argument_count > 1)
				replace = argument[1]
			else if (sel == "2" && argument_count > 2)
				replace = argument[2]
			else if (sel == "3" && argument_count > 3)
				replace = argument[3]
			else if (sel == "4" && argument_count > 4)
				replace = argument[4]
			else if (sel == "5" && argument_count > 5)
				replace = argument[5]
			else if (sel == "6" && argument_count > 6)
				replace = argument[6]
			else if (sel == "7" && argument_count > 7)
				replace = argument[7]
			else if (sel == "8" && argument_count > 8)
				replace = argument[8]
			else if (sel == "9" && argument_count > 9)
				replace = argument[9]
			else
				replace = ""
			var before = string_copy(text, 1, (i - 1))
			var after = string_copy(text, (i + 4), string_length(text))
			text = ((before + replace) + after)
			i += (string_length(replace) - 1)
		}
	}
	return text;
}
