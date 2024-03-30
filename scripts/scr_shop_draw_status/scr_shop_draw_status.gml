function scr_shop_draw_status()
{
	var gold_str = (string(global.gold) + "G")
	scr_itemroom()
	var item_str = (string(itemhold) + "/8")
	if (global.language == "ja")
	{
	    draw_text(235, 210, string_hash_to_newline(gold_str))
	    draw_text(286, 210, string_hash_to_newline(item_str))
	}
	else
	{
	    draw_text(230, 210, string_hash_to_newline(gold_str))
	    draw_text(280, 210, string_hash_to_newline(item_str))
	}
}
