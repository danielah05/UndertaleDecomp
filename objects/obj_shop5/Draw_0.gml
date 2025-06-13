if (FL_TemmieCollegePaid == 0)
	itemcost[3] = 1000
else
{
	if (gm == 0)
		itemcost[3] = 9999
	if (gm == 1)
		itemcost[3] = 9000
	if (gm == 2)
		itemcost[3] = 8000
	if (gm == 3)
		itemcost[3] = 7000
	if (gm == 4)
		itemcost[3] = 6000
	if (gm == 5)
		itemcost[3] = 5000
	if (gm == 6)
		itemcost[3] = 4500
	if (gm == 7)
		itemcost[3] = 4000
	if (gm == 8)
		itemcost[3] = 3500
	if (gm == 9)
		itemcost[3] = 3000
	if (gm == 10)
		itemcost[3] = 2800
	if (gm == 11)
		itemcost[3] = 2600
	if (gm == 12)
		itemcost[3] = 2400
	if (gm == 13)
		itemcost[3] = 2200
	if (gm == 14)
		itemcost[3] = 2000
	if (gm == 15)
		itemcost[3] = 1800
	if (gm == 16)
		itemcost[3] = 1600
	if (gm == 17)
		itemcost[3] = 1400
	if (gm == 18)
		itemcost[3] = 1250
	if (gm == 19)
		itemcost[3] = 1100
	if (gm >= 20)
		itemcost[3] = 1000
	if (gm >= 25)
		itemcost[3] = 750
	if (gm >= 30)
	{
		if (global.decomp_vars.VanillaMode)
			itemcost[4] = 500;
		else
			itemcost[3] = 500;
	}
	if (itemcost[3] < 500)
		itemcost[3] = 500
}
if (menu == 1 || menu == 2)
{
	if (menuc[1] == 0)
		scr_shop_draw_infobox(minimenuy, scr_gettext("shop5_itemdesc_22a"))
	if (menuc[1] == 1)
		scr_shop_draw_infobox(minimenuy, scr_gettext("shop5_itemdesc_22b"))
	if (menuc[1] == 2)
		scr_shop_draw_infobox(minimenuy, scr_gettext("shop5_itemdesc_22c"))
	if (murder == 0)
	{
		if (FL_TemmieCollegePaid == 0)
		{
			if (menuc[1] == 3)
				scr_shop_draw_infobox(minimenuy, scr_gettext("shop5_itemdesc_college"))
		}
		else if (menuc[1] == 3)
			scr_shop_draw_infobox(minimenuy, scr_gettext("shop5_itemdesc_64"))
	}
	else if (menuc[1] == 3)
		scr_shop_draw_infobox(minimenuy, scr_gettext("shop5_itemdesc_22d"))
}
scr_shop_draw_window(menu < 4)
draw_set_color(c_white)
if (menu == 0)
{
	specialsell = 0
	joytimer = 0
	thanks = 0
	sold[0] = 0
	sold[1] = 0
	sold[2] = 0
	sold[3] = 0
	sold[4] = 0
	sold[5] = 0
	sold[6] = 0
	sold[7] = 0
	sell = 0
	selling = 0
	sidemessage = 0
	menuc[1] = 0
	menuc[2] = 0
	menuc[3] = 0
	menuc[4] = 0
	if (instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_shop5_343")
		if (mainmessage == 0)
			global.msg[0] = scr_gettext("obj_shop5_344")
		mainmessage = 1
		instance_create(0, 110, OBJ_WRITER)
	}
	else if control_check_pressed(CancelButton)
	{
		with (OBJ_WRITER)
		{
			if (halt == 0)
				stringpos = string_length(originalstring)
			control_clear(CancelButton)
		}
	}
	menumax = 3
	scr_shop_draw_topmenu(0)
	if control_check_pressed(InteractButton)
	{
		OBJ_WRITER.dfy = 1
		control_clear(InteractButton)
		if (menuc[0] == 0)
			menu = 1
		if (menuc[0] == 1)
		{
			if (global.item[0] != Items.Null)
				menu = 5
			else
			{
				menu = 4
				sell = 1
			}
		}
		if (menuc[0] == 2)
			menu = 3
		if (menuc[0] == 3)
		{
			sell = 2
			menu = 4
		}
	}
}
if (menu == 1 || menu == 2)
{
	var pad = "  "
	if (global.language == "ja")
		pad = " "
	draw_text(30, 130, string_hash_to_newline(scr_gettext("shop_buy_list", (pad + "3"), scr_gettext("shop5_itemname_22a"))))
	draw_text(30, 150, string_hash_to_newline(scr_gettext("shop_buy_list", (pad + "1"), scr_gettext("shop5_itemname_22b"))))
	draw_text(30, 170, string_hash_to_newline(scr_gettext("shop_buy_list", "20", scr_gettext("shop5_itemname_22c"))))
	if (murder == 0)
	{
		if (FL_TemmieCollegePaid != 1)
			draw_text(30, 190, string_hash_to_newline(scr_gettext("shop_buy_list", "1000", scr_gettext("shop5_itemname_college"))))
		else
			draw_text(30, 190, string_hash_to_newline(scr_gettext("shop_buy_list", string(itemcost[3]), scr_gettext("shop5_itemname_64"))))
	}
	else
		draw_text(30, 190, string_hash_to_newline(scr_gettext("shop_buy_list", "1000", scr_gettext("shop5_itemname_22d"))))
	draw_text(30, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
	if (menu == 1)
	{
		menumax = 4
		if (instance_exists(OBJ_WRITER) == false)
		{
			if (sidemessage == 0)
				global.msg[0] = scr_gettext("obj_shop5_405")
			if (sidemessage == 1)
				global.msg[0] = scr_gettext("obj_shop5_406")
			if (sidemessage == 2)
				global.msg[0] = scr_gettext("obj_shop5_407")
			if (sidemessage == 3)
				global.msg[0] = scr_gettext("obj_shop5_408")
			if (sidemessage == 4)
				global.msg[0] = scr_gettext("obj_shop5_409")
			instance_create(210, 110, OBJ_WRITER)
		}
		var hearty = 134
		if (global.language == "ja")
			hearty -= 2
		draw_sprite(spr_heartsmall, 0, 15, (hearty + (menuc[1] * 20)))
		if control_check_pressed(InteractButton)
		{
			menu = 2
			OBJ_WRITER.dfy = 1
			if (menuc[1] == menumax)
				menu = 0
		}
		else if control_check_pressed(CancelButton)
		{
			menu = 0
			OBJ_WRITER.dfy = 1
		}
		if (menu == 2)
			control_clear(InteractButton)
		menuc[2] = 0
	}
	if (menu == 2)
	{
		var heartx = (scr_shop_divider_pos() + 15)
		var textx = (heartx + 5)
		if (global.language == "ja")
			textx -= 8
		menumax = 1
		global.faceemotion = 3
		draw_text(textx, 130, string_hash_to_newline(scr_gettext("shop5_buy_prompt1", string(itemcost[menuc[1]]))))
		draw_text(textx, 145, string_hash_to_newline(scr_gettext("shop5_buy_prompt2", string(itemcost[menuc[1]]))))
		draw_text((heartx + 15), 170, string_hash_to_newline(scr_gettext("shop5_buy_yes")))
		draw_text((heartx + 15), 185, string_hash_to_newline(scr_gettext("shop5_buy_no")))
		hearty = 174
		if (global.language == "ja")
			hearty -= 2
		draw_sprite(spr_heartsmall, 0, heartx, (hearty + (menuc[2] * 15)))
		if control_check_pressed(CancelButton)
		{
			menu = 1
			control_clear(CancelButton)
			sidemessage = 2
		}
		else if control_check_pressed(InteractButton)
		{
			control_clear(InteractButton)
			if (menuc[2] == 0)
			{
				scr_cost(itemcost[menuc[1]])
				if (FL_TemmieCollegePaid == 0 && menuc[1] == 3 && afford == 1 && murder == 0)
				{
					global.gold -= 1000
					if (global.gold < 0)
						global.gold = 0
					colleg = 1
					menu = 4
					sell = 10
					with (OBJ_WRITER)
						instance_destroy()
				}
				else if (afford == 1)
				{
					scr_itemget(item[menuc[1]])
					if (noroom == 0)
					{
						global.gold -= itemcost[menuc[1]]
						sidemessage = 1
						snd_play(snd_buyitem)
					}
					if (noroom == 1)
						sidemessage = 4
				}
				else
					sidemessage = 3
			}
			if (menuc[2] == 1)
				sidemessage = 2
			if (colleg == 0)
				menu = 1
			colleg = 0
		}
	}
	if (menuc[1] != 4)
	{
		if (minimenuy > (120 - scr_shop_infobox_height()))
			minimenuy -= 3
		if (minimenuy > 55)
			minimenuy -= 2
		if (minimenuy > 80)
			minimenuy -= 4
		if (minimenuy > 100)
			minimenuy -= 5
	}
	else if (minimenuy < 120)
		minimenuy += 20
}
if (menu == 3)
{
	menumax = 4
	scr_shop_draw_talktitle(0, 0, scr_gettext("shop5_talk1_title"))
	if (FL_TemmieCollegePaid == 0)
		scr_shop_draw_talktitle(1, 0, scr_gettext("shop5_talk2a_title"))
	if (FL_TemmieCollegePaid == 1)
		scr_shop_draw_talktitle(1, 0, scr_gettext("shop5_talk2b_title"))
	scr_shop_draw_talktitle(2, 0, scr_gettext("shop5_talk3_title"))
	scr_shop_draw_talktitle(3, 0, scr_gettext("shop5_talk4_title"))
	scr_shop_draw_talkmenu()
	if (instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_shop5_491")
		var writerx = 210
		if (global.language == "ja")
			writerx += 2
		instance_create(writerx, 110, OBJ_WRITER)
	}
	if control_check_pressed(InteractButton)
	{
		OBJ_WRITER.dfy = 1
		if (menuc[3] < menumax)
		{
			sell = (menuc[3] + 3)
			control_clear(InteractButton)
			menu = 4
		}
		else
			menu = 0
	}
	else if control_check_pressed(CancelButton)
	{
		control_clear(CancelButton)
		menu = 0
		OBJ_WRITER.dfy = 1
	}
}
if (menu < 4)
	scr_shop_draw_status()
if (menu == 4)
{
	if (sell == 0)
		menu = 0
	if (instance_exists(OBJ_WRITER) == false && selling == 0)
	{
		if (sell == 1)
			global.msg[0] = scr_gettext("obj_shop5_536")
		if (sell == 2)
			global.msg[0] = scr_gettext("obj_shop5_540")
		if (sell == 3)
		{
			global.msg[0] = scr_gettext("obj_shop5_544")
			global.msg[1] = scr_gettext("obj_shop5_545")
		}
		if (sell == 4)
		{
			global.msg[0] = scr_gettext("obj_shop5_549")
			global.msg[1] = scr_gettext("obj_shop5_550")
			if (FL_TemmieCollegePaid == 1)
			{
				global.msg[0] = scr_gettext("obj_shop5_554")
				global.msg[1] = scr_gettext("obj_shop5_555")
				global.msg[2] = scr_gettext("obj_shop5_556")
				global.msg[3] = scr_gettext("obj_shop5_557")
				global.msg[4] = scr_gettext("obj_shop5_558")
				global.msg[5] = scr_gettext("obj_shop5_559")
				global.msg[6] = scr_gettext("obj_shop5_560")
				if (gm > 18)
				{
					global.msg[5] = scr_gettext("obj_shop5_564")
					global.msg[6] = scr_gettext("obj_shop5_565")
				}
			}
		}
		if (sell == 5)
		{
			global.msg[0] = scr_gettext("obj_shop5_575")
			if (FL_TemmieCollegePaid == 1)
				global.msg[0] = scr_gettext("obj_shop5_579")
		}
		if (sell == 6)
			global.msg[0] = scr_gettext("obj_shop5_584")
		if (sell == 7)
		{
			global.msg[0] = scr_gettext("obj_shop5_589")
			global.msg[1] = scr_gettext("obj_shop5_590", global.itemnameb[sellpos])
			global.msg[2] = scr_gettext("obj_shop5_591", global.itemnameb[sellpos])
			if (FL_TemmieCollegePaid == 1)
				global.msg[2] = scr_gettext("obj_shop5_594", global.itemnameb[sellpos])
			global.msg[3] = scr_gettext("obj_shop5_596", global.itemnameb[sellpos])
		}
		if (sell == 8)
		{
			global.msg[0] = scr_gettext("obj_shop5_601")
			global.msg[1] = scr_gettext("obj_shop5_602")
		}
		if (sell == 9)
		{
			global.msg[0] = scr_gettext("obj_shop5_607")
			if (FL_TemmieCollegePaid == 1)
				global.msg[0] = scr_gettext("obj_shop5_611")
		}
		instance_create(10, 110, OBJ_WRITER)
		selling = 1
	}
	if (sell == 10)
	{
		if (c_con == 0)
		{
			with (OBJ_WRITER)
				instance_destroy()
			selling = 9
			global.msg[0] = scr_gettext("obj_shop5_633")
			global.msg[1] = scr_gettext("obj_shop5_634")
			global.msg[2] = scr_gettext("obj_shop5_635")
			instance_create(10, 110, OBJ_WRITER)
			c_con = 1
		}
		if (c_con == 1 && instance_exists(OBJ_WRITER) == false)
		{
			with (OBJ_WRITER)
				instance_destroy()
			if (FL_TruePacifist == false)
				caster_pause(shopmus)
			c_con = 2
			alarm[4] = 120
		}
		if (c_con == 2)
		{
			obj_shop5_body.bodyx += 3
			obj_shop5_body.boxx += 3
		}
		if (c_con == 3)
		{
			c_con = 4
			alarm[4] = 120
			FL_TemmieCollegePaid = 1
		}
		if (c_con == 4)
		{
			obj_shop5_body.bodyx -= 3
			obj_shop5_body.boxx -= 3
		}
		if (c_con == 5)
		{
			if (FL_TruePacifist == false)
				caster_resume(shopmus)
			global.msg[0] = scr_gettext("obj_shop5_672")
			global.msg[1] = scr_gettext("obj_shop5_673")
			instance_create(10, 110, OBJ_WRITER)
			c_con = 6
		}
		if (c_con == 6 && instance_exists(OBJ_WRITER) == false)
		{
			selling = 1
			c_con = -1
		}
	}
	if instance_exists(OBJ_WRITER)
	{
		if control_check_pressed(CancelButton)
		{
			with (OBJ_WRITER)
			{
				if (halt == 0)
					stringpos = string_length(originalstring)
				control_clear(CancelButton)
			}
		}
	}
	if (selling == 1 && instance_exists(OBJ_WRITER) == false)
	{
		if (sell == 2)
		{
			selling = 2
			event_user(1)
		}
		else
		{
			if (sell == 1 || sell == 9 || sell == 10)
				menu = 0
			else
				menu = 3
			if (sell == 7)
			{
				menu = 6
				buffer = 4
				value[sellpos] = (value[sellpos] + 1)
				specialsell = 1
				sellpos2 = 0
			}
			if (sell == 8)
			{
				menu = 6
				buffer = 4
				value[sellpos] = (ceil((value[sellpos] * 1.25)) + 1)
				specialsell = 2
				sellpos2 = 0
			}
			sell = 0
			selling = 0
		}
	}
}
if (menu == 5)
{
	specialsell = 0
	joytimer -= 1
	if (joytimer <= 0)
		global.faceemotion = 0
	draw_set_color(c_white)
	scr_setfont(fnt_maintext)
	value[0] = 1
	value[1] = 1
	value[2] = 1
	value[3] = 1
	value[4] = 1
	value[5] = 1
	value[6] = 1
	value[7] = 1
	scr_itemvalue()
	scr_itemnameb()
	value[8] = 0
	value[9] = 0
	value[10] = 0
	var left_x = 15
	var right_x = 155
	var heart_space = 15
	var max_width = 999
	if (global.language == "ja")
	{
		left_x = 12
		right_x = 163
		heart_space = 13
		max_width = 84
	}
	for (i = 0; i < InventorySize; i += 1)
	{
		s_value[i] = scr_gettext("shop5_sell_price", string(value[i]))
		if (value[i] == -1)
			s_value[i] = scr_gettext("shop5_sell_unsellable")
	}
	odd = -1
	hearty = 134
	if (global.language == "ja")
		hearty -= 2
	if (sellpos == 0 || sellpos == 2 || sellpos == 4 || sellpos == 6)
	{
		odd = 0
		draw_sprite(spr_heartsmall, 0, left_x, (hearty + ((sellpos / 2) * 20)))
	}
	if (sellpos == 1 || sellpos == 3 || sellpos == 5 || sellpos == 7)
	{
		odd = 1
		draw_sprite(spr_heartsmall, 0, right_x, (hearty + (((sellpos - 1) / 2) * 20)))
	}
	if (sellpos == 8)
		draw_sprite(spr_heartsmall, 0, left_x, (hearty + 80))
	if (keyboard_check_pressed(vk_right) && odd == 0)
	{
		if (value[(sellpos + 1)] != 0)
			sellpos += 1
	}
	if (keyboard_check_pressed(vk_left) && odd == 1)
		sellpos -= 1
	if keyboard_check_pressed(vk_down)
	{
		d_fail = 0
		if (value[(sellpos + 2)] == 0)
			d_fail = 1
		if (d_fail == 1 && odd == 1 && value[(sellpos + 1)] != 0)
			d_fail = 2
		if (sellpos == 6 || sellpos == 7 || sellpos == 8)
			d_fail = 1
		if (d_fail == 1)
			sellpos = 8
		else if (d_fail == 2)
			sellpos += 1
		else
			sellpos += 2
	}
	if keyboard_check_pressed(vk_up)
	{
		if (sellpos != 0 && sellpos != 1)
		{
			if (sellpos == 8)
			{
				sellpos = 0
				if (value[2] != 0)
					sellpos = 2
				if (value[4] != 0)
					sellpos = 4
				if (value[6] != 0)
					sellpos = 6
			}
			else
				sellpos -= 2
		}
	}
	draw_set_color(c_white)
	var price_width = round(string_width(string_hash_to_newline(scr_gettext("shop5_sell_price", "888"))))
	var separator = scr_gettext("shop5_sell_separator")
	var sep_width = string_width(string_hash_to_newline(separator))
	for (i = 0; i < 4; i += 1)
	{
		var xx = (left_x + heart_space)
		var yy = (130 + (i * 20))
		draw_set_color(c_white)
		if (value[(i * 2)] != 0 && sold[(i * 2)] == 0)
		{
			xx += price_width
			var value_x = (xx - round(string_width(string_hash_to_newline(s_value[(i * 2)]))))
			draw_text(value_x, yy, string_hash_to_newline(s_value[(i * 2)]))
			draw_text(xx, yy, string_hash_to_newline(separator))
			xx += sep_width
			var name = global.itemnameb[(i * 2)]
			var scale = 1
			var width = string_width(string_hash_to_newline(name))
			if (width > max_width)
				scale = (max_width / width)
			draw_text_transformed(xx, yy, string_hash_to_newline(name), scale, 1, 0)
		}
		else if (sold[(i * 2)] == 1)
		{
			draw_set_color(c_gray)
			draw_text(xx, yy, string_hash_to_newline(scr_gettext("shop5_sell_sold")))
		}
		xx = (right_x + heart_space)
		draw_set_color(c_white)
		if (value[((i * 2) + 1)] != 0 && sold[((i * 2) + 1)] == 0)
		{
			xx += price_width
			value_x = (xx - round(string_width(string_hash_to_newline(s_value[((i * 2) + 1)]))))
			draw_text(value_x, yy, string_hash_to_newline(s_value[((i * 2) + 1)]))
			draw_text(xx, yy, string_hash_to_newline(separator))
			xx += sep_width
			name = global.itemnameb[((i * 2) + 1)]
			scale = 1
			width = string_width(string_hash_to_newline(name))
			if (width > max_width)
				scale = (max_width / width)
			draw_text_transformed(xx, yy, string_hash_to_newline(name), scale, 1, 0)
		}
		else if (sold[((i * 2) + 1)] == 1)
		{
			draw_set_color(c_gray)
			draw_text(xx, yy, string_hash_to_newline(scr_gettext("shop5_sell_sold")))
		}
	}
	draw_set_color(c_white)
	draw_text(30, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
	draw_set_color(c_yellow)
	draw_text(200, 210, string_hash_to_newline(scr_gettext("shop5_sell_gold")))
	if control_check_pressed(InteractButton)
	{
		joytimer = 0
		buffer = 3
		if (sellpos == 8)
			menu = 0
		else if (value[sellpos] > 0)
		{
			sellqual = 0
			if (FL_TemSellParameter1 <= 1)
				sellqual = 1
			if (FL_TemSellParameter2 == 0 && global.item[sellpos] == Items.TemmieFlakes)
			{
				sellqual = 1
				FL_TemSellParameter2 = 1
			}
			if (sellqual == 1)
			{
				menu = 4
				sell = 7
				FL_TemSellParameter1 = 9
			}
			else
			{
				menu = 6
				sellpos2 = 0
			}
		}
		else
			snd_play(snd_mtt9)
	}
	if control_check_pressed(CancelButton)
	{
		menu = 0
		sellpos = 0
	}
}
if (menu == 6)
{
	global.faceemotion = 3
	buffer -= 1
	var y_prompt = 150
	var y_choice = 180
	if (global.language == "ja")
	{
		y_prompt -= 8
		y_choice += 6
	}
	draw_set_color(c_white)
	scr_setfont(fnt_maintext)
	if (specialsell != 2)
		draw_text(55, y_prompt, string_hash_to_newline(scr_gettext("shop5_sell_prompt", string(global.itemnameb[sellpos]), string(value[sellpos]))))
	else
	{
		global.faceemotion = 5
		draw_text(55, y_prompt, string_hash_to_newline(scr_gettext("shop5_sell_prompt_special", string(global.itemnameb[sellpos]), string(value[sellpos]))))
	}
	draw_text(80, y_choice, string_hash_to_newline(scr_gettext("shop5_sell_yes")))
	draw_text(190, y_choice, string_hash_to_newline(scr_gettext("shop5_sell_no")))
	draw_sprite(spr_heartsmall, 0, (65 + (sellpos2 * 110)), (y_choice + 5))
	draw_set_color(c_yellow)
	draw_text(200, 210, string_hash_to_newline(scr_gettext("shop5_sell_gold")))
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
	{
		if (sellpos2 == 0)
			sellpos2 = 1
		else
			sellpos2 = 0
	}
	if (control_check_pressed(CancelButton) && buffer <= 0)
	{
		buffer = 1
		s_quit = 1
	}
	if (control_check_pressed(InteractButton) && buffer <= 0)
	{
		if (sellpos2 == 1)
			s_quit = 1
		else
		{
			if (global.item[sellpos] != Items.TemmieFlakes)
				FL_TemSellParameter1 -= 1
			joytimer = 90
			global.faceemotion = 6
			snd_play(snd_buyitem)
			global.gold += value[sellpos]
			scr_itemshift(sellpos, 0)
			thanks += 1
			if (thanks > 8)
				thanks = 8
			sold[(8 - thanks)] = 1
			if (global.item[sellpos] == Items.Null && sellpos > 0)
				sellpos -= 1
			if (global.item[0] != Items.Null)
				menu = 5
			else
				menu = 0
		}
	}
	if (s_quit == 1)
	{
		s_quit = 0
		menu = 5
		if (specialsell > 0)
		{
			if (specialsell == 1)
			{
				menu = 4
				sell = 8
			}
			if (specialsell == 2)
			{
				menu = 4
				sell = 9
			}
		}
	}
}
if keyboard_check_pressed(vk_down)
{
	menuc[menu] += 1
	if (menuc[menu] > menumax)
		menuc[menu] = 0
}
if keyboard_check_pressed(vk_up)
{
	menuc[menu] -= 1
	if (menuc[menu] < 0)
		menuc[menu] = menumax
}
if (global.debug == true)
{
	if keyboard_check_pressed(ord("G"))
		global.gold = 5000
}
