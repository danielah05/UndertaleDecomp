if (menu == 1 || menu == 2)
{
	var soldout = 0
	if (menuc[1] == 3)
		soldout = FL_GotFaceSteak != 0
	if (menuc[1] >= 0 && menuc[1] <= 3)
	{
		if soldout
			scr_shop_draw_infobox(minimenuy, scr_gettext("shop4_itemdesc_soldout"))
		else
			scr_shop_draw_infobox(minimenuy, scr_gettext(("shop4_itemdesc_" + string(item[menuc[1]]))))
	}
}
scr_shop_draw_window(menu < 4)
draw_set_color(c_white)
if (menu == 0)
{
	sell = 0
	selling = 0
	sidemessage = 0
	menuc[1] = 0
	menuc[2] = 0
	menuc[3] = 0
	menuc[4] = 0
	if (instance_exists(OBJ_WRITER) == false)
	{
		if (FL_BurgerPantsStatus < BurgerPantsStatus.Talked)
		{
			global.msg[0] = scr_gettext("obj_shop4_244")
			if (mainmessage == 0)
				global.msg[0] = scr_gettext("obj_shop4_245")
		}
		else
		{
			global.msg[0] = scr_gettext("obj_shop4_249")
			if (mainmessage == 0)
				global.msg[0] = scr_gettext("obj_shop4_250")
			if (murder == 1)
				global.msg[0] = scr_gettext("obj_shop4_252")
		}
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
			sell = 1
			menu = 4
		}
		if (menuc[0] == 2)
		{
			menu = 3
			if (FL_BurgerPantsStatus == BurgerPantsStatus.CantTalk)
			{
				menu = 4
				sell = 20
			}
			if (FL_BurgerPantsStatus == BurgerPantsStatus.CanTalk)
			{
				menu = 4
				sell = 21
			}
		}
		if (menuc[0] == 3)
		{
			sell = 2
			menu = 4
		}
	}
}
if (menu == 1 || menu == 2)
{
	for (var i = 0; i < 3; i++)
	{
		var pad = "  "
		if (global.language == "ja")
			pad = " "
		if (itemcost[i] < 100)
			var cost = (pad + string(itemcost[i]))
		else
			cost = string(itemcost[i])
		draw_text(30, (130 + (20 * i)), string_hash_to_newline(scr_gettext("shop_buy_list", cost, scr_gettext(("item_name_" + string(item[i]))))))
	}
	if (FL_GotFaceSteak == 0)
	{
		var str = scr_gettext("shop_buy_list", "500", "")
		draw_text(30, 190, string_hash_to_newline(str))
		var namepos = (30 + string_width(string_hash_to_newline(str)))
		var namestr = scr_gettext("shop4_item_61_longname")
		var xscale = (((scr_shop_divider_pos() - 15) - namepos) / string_width(string_hash_to_newline(namestr)))
		draw_text_transformed(namepos, 190, string_hash_to_newline(namestr), xscale, 1, 0)
	}
	else
	{
		draw_set_color(c_gray)
		draw_text(30, 190, string_hash_to_newline(scr_gettext("shop_buy_soldout")))
		draw_set_color(c_white)
	}
	draw_text(30, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
	if (menu == 1)
	{
		menumax = 4
		if (instance_exists(OBJ_WRITER) == false)
		{
			if (FL_BurgerPantsStatus < BurgerPantsStatus.Talked)
			{
				if (sidemessage == 0)
					global.msg[0] = scr_gettext("obj_shop4_329")
				if (sidemessage == 1)
					global.msg[0] = scr_gettext("obj_shop4_330")
				if (sidemessage == 2)
					global.msg[0] = scr_gettext("obj_shop4_331")
				if (sidemessage == 3)
					global.msg[0] = scr_gettext("obj_shop4_332")
				if (sidemessage == 4)
					global.msg[0] = scr_gettext("obj_shop4_333")
				if (sidemessage == 5)
					global.msg[0] = scr_gettext("obj_shop4_334")
			}
			if (FL_BurgerPantsStatus == BurgerPantsStatus.Talked)
			{
				if (sidemessage == 0)
					global.msg[0] = scr_gettext("obj_shop4_338")
				if (sidemessage == 1)
					global.msg[0] = scr_gettext("obj_shop4_339")
				if (sidemessage == 2)
					global.msg[0] = scr_gettext("obj_shop4_340")
				if (sidemessage == 3)
					global.msg[0] = scr_gettext("obj_shop4_341")
				if (sidemessage == 4)
					global.msg[0] = scr_gettext("obj_shop4_342")
				if (sidemessage == 5)
					global.msg[0] = scr_gettext("obj_shop4_343")
				if (murder == 1)
				{
					if (sidemessage == 0)
						global.msg[0] = scr_gettext("obj_shop4_347")
					if (sidemessage == 1)
						global.msg[0] = scr_gettext("obj_shop4_348")
					if (sidemessage == 2)
						global.msg[0] = scr_gettext("obj_shop4_349")
					if (sidemessage == 3)
						global.msg[0] = scr_gettext("obj_shop4_350")
					if (sidemessage == 4)
						global.msg[0] = scr_gettext("obj_shop4_351")
					if (sidemessage == 5)
						global.msg[0] = scr_gettext("obj_shop4_352")
				}
			}
			instance_create(210, 110, OBJ_WRITER)
		}
		var hearty = 134
		if (global.language == "ja")
			hearty -= 2
		draw_sprite(spr_heartsmall, 0, 15, (hearty + (menuc[1] * 20)))
		if control_check_pressed(InteractButton)
		{
			soldout = 0
			if (menuc[1] == 3 && FL_GotFaceSteak == 1)
				soldout = 1
			if (soldout == 0)
				menu = 2
			else
				sidemessage = 5
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
		draw_text(textx, 130, string_hash_to_newline(scr_gettext("shop_buy_prompt1", string(itemcost[menuc[1]]))))
		draw_text(textx, 145, string_hash_to_newline(scr_gettext("shop_buy_prompt2", string(itemcost[menuc[1]]))))
		draw_text((heartx + 15), 170, string_hash_to_newline(scr_gettext("yes")))
		draw_text((heartx + 15), 185, string_hash_to_newline(scr_gettext("no")))
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
				if (afford == 1)
				{
					scr_itemget(item[menuc[1]])
					if (noroom == 0)
					{
						global.gold -= itemcost[menuc[1]]
						snd_play(snd_buyitem)
						sidemessage = 1
						if (FL_BurgerPantsStatus < BurgerPantsStatus.CanTalk)
							FL_BurgerPantsStatus = BurgerPantsStatus.CanTalk
						if (menuc[1] == 3)
							FL_GotFaceSteak = 1
					}
					if (noroom == 1)
						sidemessage = 4
				}
				else
					sidemessage = 3
			}
			if (menuc[2] == 1)
				sidemessage = 2
			menu = 1
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
	if (FL_TruePacifist == false)
	{
		if (murder == 0)
		{
			scr_shop_draw_talktitle(0, 0, scr_gettext("shop4_talk1_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 0)
				scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2a_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 1)
				scr_shop_draw_talktitle(1, 1, scr_gettext("shop4_talk2b_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 2)
				scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2c_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 4)
				scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2d_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 5)
				scr_shop_draw_talktitle(1, 1, scr_gettext("shop4_talk2e_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 6)
				scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2f_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 7)
				scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2g_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 8)
				scr_shop_draw_talktitle(1, 1, scr_gettext("shop4_talk2h_title"))
			if (FL_BurgerPantsGirlsConvoCounter == 9)
				scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk2i_title"))
			if (FL_BurgerPantsMTTConvoCounter == 0)
				scr_shop_draw_talktitle(2, 0, scr_gettext("shop4_talk3a_title"))
			if (FL_BurgerPantsMTTConvoCounter == 1)
				scr_shop_draw_talktitle(2, 1, scr_gettext("shop4_talk3b_title"))
			if (FL_BurgerPantsMTTConvoCounter == 2)
				scr_shop_draw_talktitle(2, 1, scr_gettext("shop4_talk3c_title"))
			if (FL_BurgerPantsMTTConvoCounter == 3)
				scr_shop_draw_talktitle(2, 0, scr_gettext("shop4_talk3d_title"))
			scr_shop_draw_talktitle(3, 0, scr_gettext("shop4_talk4_title"))
		}
		else
		{
			scr_shop_draw_talktitle(0, 0, scr_gettext("shop4_talk9_title"))
			scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk10_title"))
			scr_shop_draw_talktitle(2, 0, scr_gettext("shop4_talk11_title"))
			scr_shop_draw_talktitle(3, 0, scr_gettext("shop4_talk12_title"))
		}
	}
	if (FL_TruePacifist == true)
	{
		scr_shop_draw_talktitle(0, 0, scr_gettext("shop4_talk5_title"))
		scr_shop_draw_talktitle(1, 0, scr_gettext("shop4_talk6_title"))
		scr_shop_draw_talktitle(2, 0, scr_gettext("shop4_talk7_title"))
		scr_shop_draw_talktitle(3, 0, scr_gettext("shop4_talk8_title"))
	}
	scr_shop_draw_talkmenu()
	if (instance_exists(OBJ_WRITER) == false)
	{
		global.msg[0] = scr_gettext("obj_shop4_472")
		if (murder == 1)
			global.msg[0] = scr_gettext("obj_shop4_473")
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
		{
			if (FL_BurgerPantsStatus < BurgerPantsStatus.Talked)
			{
				global.msg[0] = scr_gettext("obj_shop4_519")
				soldo += 1
				if (soldo > 1)
					global.msg[0] = scr_gettext("obj_shop4_521")
			}
			else
			{
				global.msg[0] = scr_gettext("obj_shop4_525")
				if (murder == 1)
					global.msg[0] = scr_gettext("obj_shop4_529")
			}
		}
		if (sell == 2)
		{
			global.msg[0] = scr_gettext("obj_shop4_535")
			if (FL_BurgerPantsStatus > BurgerPantsStatus.CanTalk)
			{
				global.msg[0] = scr_gettext("obj_shop4_538")
				if (murder == 1)
					global.msg[0] = scr_gettext("obj_shop4_539")
			}
		}
		if (sell == 3)
		{
			global.msg[0] = scr_gettext("obj_shop4_545")
			global.msg[1] = scr_gettext("obj_shop4_546")
			global.msg[2] = scr_gettext("obj_shop4_547")
			if (FL_TruePacifist == true)
			{
				global.msg[0] = scr_gettext("obj_shop4_551")
				global.msg[1] = scr_gettext("obj_shop4_552")
				global.msg[2] = scr_gettext("obj_shop4_553")
				global.msg[3] = scr_gettext("obj_shop4_554")
			}
			if (murder == 1)
			{
				global.msg[0] = scr_gettext("obj_shop4_559")
				global.msg[1] = scr_gettext("obj_shop4_560")
				global.msg[2] = scr_gettext("obj_shop4_561")
			}
		}
		if (sell == 4)
		{
			global.msg[0] = scr_gettext("obj_shop4_566")
			if (FL_BurgerPantsGirlsConvoCounter == 9)
				global.msg[0] = scr_gettext("obj_shop4_570")
			if (FL_BurgerPantsGirlsConvoCounter == 8)
			{
				global.msg[0] = scr_gettext("obj_shop4_575")
				global.msg[1] = scr_gettext("obj_shop4_576")
				global.msg[2] = scr_gettext("obj_shop4_577")
				global.msg[3] = scr_gettext("obj_shop4_578")
				global.msg[4] = scr_gettext("obj_shop4_579")
				global.msg[5] = scr_gettext("obj_shop4_580")
				global.msg[6] = scr_gettext("obj_shop4_581")
				global.msg[7] = scr_gettext("obj_shop4_582")
				global.msg[8] = scr_gettext("obj_shop4_583")
			}
			if (FL_BurgerPantsGirlsConvoCounter == 7)
			{
				global.msg[0] = scr_gettext("obj_shop4_588")
				global.msg[1] = scr_gettext("obj_shop4_589")
				global.msg[2] = scr_gettext("obj_shop4_590")
				global.msg[3] = scr_gettext("obj_shop4_591")
				global.msg[4] = scr_gettext("obj_shop4_592")
				global.msg[5] = scr_gettext("obj_shop4_593")
				global.msg[6] = scr_gettext("obj_shop4_594")
				global.msg[7] = scr_gettext("obj_shop4_595")
				global.msg[8] = scr_gettext("obj_shop4_596")
				global.msg[9] = scr_gettext("obj_shop4_597")
			}
			if (FL_BurgerPantsGirlsConvoCounter == 6)
				global.msg[0] = scr_gettext("obj_shop4_603")
			if (FL_BurgerPantsGirlsConvoCounter == 5)
			{
				global.msg[0] = scr_gettext("obj_shop4_608")
				global.msg[1] = scr_gettext("obj_shop4_609")
				global.msg[2] = scr_gettext("obj_shop4_610")
				global.msg[3] = scr_gettext("obj_shop4_611")
				global.msg[4] = scr_gettext("obj_shop4_612")
				global.msg[5] = scr_gettext("obj_shop4_613")
				global.msg[6] = scr_gettext("obj_shop4_614")
				global.msg[7] = scr_gettext("obj_shop4_615")
			}
			if (FL_BurgerPantsGirlsConvoCounter == 4)
			{
				global.msg[0] = scr_gettext("obj_shop4_620")
				global.msg[1] = scr_gettext("obj_shop4_621")
				global.msg[2] = scr_gettext("obj_shop4_622")
				global.msg[3] = scr_gettext("obj_shop4_623")
				global.msg[4] = scr_gettext("obj_shop4_624")
				global.msg[5] = scr_gettext("obj_shop4_625")
				global.msg[6] = scr_gettext("obj_shop4_626")
			}
			if (FL_BurgerPantsGirlsConvoCounter == 2)
			{
				global.msg[0] = scr_gettext("obj_shop4_631")
				global.msg[1] = scr_gettext("obj_shop4_632")
			}
			if (FL_BurgerPantsGirlsConvoCounter == 1)
			{
				global.msg[0] = scr_gettext("obj_shop4_638")
				global.msg[1] = scr_gettext("obj_shop4_639")
				global.msg[2] = scr_gettext("obj_shop4_640")
				global.msg[3] = scr_gettext("obj_shop4_641")
				global.msg[4] = scr_gettext("obj_shop4_642")
				global.msg[5] = scr_gettext("obj_shop4_643")
				global.msg[6] = scr_gettext("obj_shop4_644")
				global.msg[7] = scr_gettext("obj_shop4_645")
				global.msg[8] = scr_gettext("obj_shop4_646")
				global.msg[9] = scr_gettext("obj_shop4_647")
			}
			if (FL_BurgerPantsGirlsConvoCounter == 0)
			{
				global.msg[0] = scr_gettext("obj_shop4_651")
				global.msg[1] = scr_gettext("obj_shop4_652")
				global.msg[2] = scr_gettext("obj_shop4_653")
				global.msg[3] = scr_gettext("obj_shop4_654")
				global.msg[4] = scr_gettext("obj_shop4_655")
				global.msg[5] = scr_gettext("obj_shop4_656")
			}
			if (FL_TruePacifist == true)
			{
				global.msg[0] = scr_gettext("obj_shop4_662")
				global.msg[1] = scr_gettext("obj_shop4_663")
				if (FL_BurgerPantsGirlsConvoCounter >= 9)
				{
					global.msg[0] = scr_gettext("obj_shop4_667")
					global.msg[1] = scr_gettext("obj_shop4_668")
					global.msg[2] = scr_gettext("obj_shop4_669")
					global.msg[3] = scr_gettext("obj_shop4_670")
					global.msg[4] = scr_gettext("obj_shop4_671")
				}
			}
			if (murder == 1)
			{
				global.msg[0] = scr_gettext("obj_shop4_678")
				global.msg[1] = scr_gettext("obj_shop4_679")
				global.msg[2] = scr_gettext("obj_shop4_680")
				global.msg[3] = scr_gettext("obj_shop4_681")
				global.msg[4] = scr_gettext("obj_shop4_682")
				global.msg[5] = scr_gettext("obj_shop4_683")
			}
			if (FL_BurgerPantsGirlsConvoCounter == 8)
				FL_BurgerPantsGirlsConvoCounter = 9
			if (FL_BurgerPantsGirlsConvoCounter == 5)
				FL_BurgerPantsGirlsConvoCounter = 6
			if (FL_BurgerPantsGirlsConvoCounter == 1)
				FL_BurgerPantsGirlsConvoCounter = 2
			if (FL_BurgerPantsGirlsConvoCounter == 0)
				FL_BurgerPantsGirlsConvoCounter = 1
		}
		if (sell == 5)
		{
			if (FL_BurgerPantsMTTConvoCounter == 3)
				global.msg[0] = scr_gettext("obj_shop4_698")
			if (FL_BurgerPantsMTTConvoCounter == 2)
			{
				global.msg[0] = scr_gettext("obj_shop4_704")
				global.msg[1] = scr_gettext("obj_shop4_705")
				global.msg[2] = scr_gettext("obj_shop4_706")
				global.msg[3] = scr_gettext("obj_shop4_707")
				global.msg[4] = scr_gettext("obj_shop4_708")
				global.msg[5] = scr_gettext("obj_shop4_709")
				global.msg[6] = scr_gettext("obj_shop4_710")
			}
			if (FL_BurgerPantsMTTConvoCounter == 1)
			{
				global.msg[0] = scr_gettext("obj_shop4_716")
				global.msg[1] = scr_gettext("obj_shop4_717")
				global.msg[2] = scr_gettext("obj_shop4_718")
				global.msg[3] = scr_gettext("obj_shop4_719")
			}
			if (FL_BurgerPantsMTTConvoCounter == 0)
			{
				global.msg[0] = scr_gettext("obj_shop4_724")
				global.msg[1] = scr_gettext("obj_shop4_725")
				global.msg[2] = scr_gettext("obj_shop4_726")
			}
			if (FL_BurgerPantsMTTConvoCounter == 2)
				FL_BurgerPantsMTTConvoCounter = 3
			if (FL_BurgerPantsMTTConvoCounter == 1)
				FL_BurgerPantsMTTConvoCounter = 2
			if (FL_BurgerPantsMTTConvoCounter == 0)
				FL_BurgerPantsMTTConvoCounter = 1
			if (FL_TruePacifist == true)
			{
				global.msg[0] = scr_gettext("obj_shop4_734")
				global.msg[1] = scr_gettext("obj_shop4_735")
				global.msg[2] = scr_gettext("obj_shop4_736")
				global.msg[3] = scr_gettext("obj_shop4_737")
				global.msg[4] = scr_gettext("obj_shop4_738")
				global.msg[5] = scr_gettext("obj_shop4_739")
			}
			if (murder == 1)
			{
				global.msg[0] = scr_gettext("obj_shop4_744")
				global.msg[1] = scr_gettext("obj_shop4_745")
				global.msg[2] = scr_gettext("obj_shop4_746")
				global.msg[3] = scr_gettext("obj_shop4_747")
			}
		}
		if (sell == 6)
		{
			global.msg[0] = scr_gettext("obj_shop4_756")
			global.msg[1] = scr_gettext("obj_shop4_757")
			global.msg[2] = scr_gettext("obj_shop4_758")
			global.msg[3] = scr_gettext("obj_shop4_759")
			global.msg[4] = scr_gettext("obj_shop4_760")
			global.msg[5] = scr_gettext("obj_shop4_761")
			global.msg[6] = scr_gettext("obj_shop4_762")
			if (FL_TruePacifist == true)
			{
				global.msg[0] = scr_gettext("obj_shop4_767")
				global.msg[1] = scr_gettext("obj_shop4_768")
				global.msg[2] = scr_gettext("obj_shop4_769")
				global.msg[3] = scr_gettext("obj_shop4_770")
			}
			if (murder == 1)
			{
				global.msg[0] = scr_gettext("obj_shop4_775")
				global.msg[1] = scr_gettext("obj_shop4_776")
			}
		}
		if (sell == 20)
			global.msg[0] = scr_gettext("obj_shop4_785")
		if (sell == 21)
		{
			global.msg[0] = scr_gettext("obj_shop4_790")
			global.msg[1] = scr_gettext("obj_shop4_792")
			global.msg[2] = scr_gettext("obj_shop4_793")
			global.msg[3] = scr_gettext("obj_shop4_794")
			global.msg[4] = scr_gettext("obj_shop4_795")
			FL_BurgerPantsStatus = BurgerPantsStatus.Talked
		}
		instance_create(10, 110, OBJ_WRITER)
		selling = 1
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
			if (sell == 1 || sell == 20)
				menu = 0
			else
				menu = 3
			sell = 0
			selling = 0
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
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
	if keyboard_check_pressed(ord("G"))
		global.gold = 5000
	if keyboard_check_pressed(ord("B"))
		FL_BurgerPantsGirlsConvoCounter += 1
	if keyboard_check_pressed(ord("L"))
	{
		caster_free(all)
		room_goto(room_shop3)
	}
}
