if (global.turntimer > 0)
{
	depth = -1000
	draw_set_color(c_red)
	global.turntimer -= 1
}
if instance_exists(obj_uborder)
{
	depth = 5
	draw_set_color(c_black)
	if (drawrect == 1)
		ossafe_fill_rectangle((obj_uborder.x + 5), (obj_uborder.y + 5), obj_rborder.x, obj_dborder.y)
}
if (background_color_get() != c_white && drawbinfo == 1)
	scr_binfowrite()
if (global.bmenuno == 1 && global.myfight == 0 && global.mnfight == 0)
{
	var maxwidth = 0
	for (var i = 0; i < 3; i++)
	{
		if (global.monster[i] == true)
		{
			var name = global.monstername[i]
			if (global.language == "ja")
			{
				var width = 0
				for (var j = 1; j <= strlen(name); j++)
				{
					var ch = ord(string_char_at(name, j))
					if (ch == 32 || ch >= 65377)
						width += 13
					else if (ch < 8192)
						width += 16
					else
						width += 26
				}
			}
			else
				width = (strlen(name) * 16)
			if (width > maxwidth)
				maxwidth = width
		}
	}
	xwrite = (190 + maxwidth)
	for (i = 0; i < 3; i++)
	{
		if (global.monster[i] == true && (!instance_exists(obj_sansb)))
		{
			draw_set_color(c_red)
			var lineheight = 32
			var y_start = 280
			if (global.language == "ja")
				lineheight = 36
			draw_rectangle(xwrite, (y_start + (i * lineheight)), (xwrite + 100), ((y_start + (i * lineheight)) + 16), false)
			draw_set_color(c_lime)
			draw_rectangle(xwrite, (y_start + (i * lineheight)), (xwrite + ((global.monsterhp[i] / global.monstermaxhp[i]) * 100)), ((y_start + (i * lineheight)) + 16), false)
		}
	}
}
if (global.language == "ja" && global.bmenuno >= 3 && global.bmenuno < 4 && global.myfight == 0 && global.mnfight == 0)
{
	var first = ((global.bmenuno - 3) * 8)
	scr_setfont(fnt_main)
	draw_set_color(c_white)
	var xx = (global.idealborder[0] + 20)
	var yy = (global.idealborder[2] + 20)
	var lineheader = scr_gettext("item_menub_header")
	i = 0
	while (i < 3 && global.item[(first + i)] != Items.Null)
	{
		draw_text(xx, (yy + (i * 36)), string_hash_to_newline((lineheader + global.itemnameb[(first + i)])))
		i++
	}
	var num_items = 8
	while (num_items > 0 && global.item[(num_items - 1)] == Items.Null)
		num_items--
	if (num_items > 3)
	{
		xx = (global.idealborder[1] - 30)
		yy = (floor(((global.idealborder[2] + global.idealborder[3]) / 2)) - (5 * (2 + num_items)))
		var arrow_yofs = round((min(((obj_time.time % 30) / 30), 0.5) * 6))
		if (first > 0)
			draw_sprite(spr_bitem_ja_arrow, 0, xx, (yy - arrow_yofs))
		yy += 10
		for (i = 0; i < num_items; i++)
		{
			if ((first + global.bmenucoord[3]) == i)
				var spr = spr_bitem_ja_largedot
			else
				spr = spr_bitem_ja_smalldot
			draw_sprite(spr, 0, xx, yy)
			yy += 10
		}
		if ((first + 3) < num_items)
			draw_sprite_ext(spr_bitem_ja_arrow, 0, xx, ((yy + 10) + arrow_yofs), 1, -1, 0, c_white, 1)
	}
}
