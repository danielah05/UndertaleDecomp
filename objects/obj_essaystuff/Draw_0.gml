draw_set_color(c_white)
scr_setfont(fnt_main)
draw_text_ext((global.idealborder[0] + 25), (global.idealborder[2] + 15), string_hash_to_newline(mystring), 25, 450)
if keyboard_present
{
	if (cantype == 1)
	{
		var xx = 430
		if (global.language == "ja")
			xx = 400
		draw_text(xx, 50, string_hash_to_newline(scr_gettext("mett_essay_prompt_pc")))
	}
	else
		draw_text(430, 200, string_hash_to_newline(scr_gettext("mett_essay_timeup")))
	dotimer += 1
	if (dotimer > 4)
	{
		if (draw_on == 0)
			draw_on = 1
		else
			draw_on = 0
		dotimer = 0
	}
	if (draw_on == 1 && string_length(mystring) < 3)
		draw_text((obj_heart.x - 30), (obj_heart.y + 20), string_hash_to_newline(scr_gettext("mett_essay_start")))
}
global.msg[0] = "/%%"
if (con == 1)
{
	leng = string_length(mystring)
	if (string_length(mystring) == 1)
		global.msg[0] = scr_gettext("obj_essaystuff_159")
	if (string_length(mystring) == 2)
		global.msg[0] = scr_gettext("obj_essaystuff_160")
	if (string_length(mystring) > 2)
		global.msg[0] = scr_gettext("obj_essaystuff_161")
	if (string_length(mystring) > 13)
		global.msg[0] = scr_gettext("obj_essaystuff_162")
	if (string_length(mystring) > 50)
		global.msg[0] = scr_gettext("obj_essaystuff_163")
	if (string_length(mystring) > 90)
	{
		global.msg[0] = scr_gettext("obj_essaystuff_164")
		global.msg[1] = scr_gettext("obj_essaystuff_165")
		global.msg[2] = scr_gettext("obj_essaystuff_166")
	}
	if (string_length(mystring) > 140)
		global.msg[0] = scr_gettext("obj_essaystuff_168")
	spec = 0
	swear = 0
	nice = 0
	beaut = 0
	mystring_l = string_to_hiragana(string_lower(mystring))
	if (string_pos("beaut", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("hot", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("sexy", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("pretty", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("handsome", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("gorgeous", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("sparkl", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("charm", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("attract", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("cute", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("smokin", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("elegant", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("good look", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("goodlook", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("good-look", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("grace", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("comely", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("fine", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("foxy", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("looker", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("dreamboat", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("stun", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("shapely", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("ravishing", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("allur", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("entic", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("seduct", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("enchant", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("appeal", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("tantaliz", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("adorable", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("radiant", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("capitvat", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
	}
	if (string_pos("leg", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
		spec = 1
	}
	if (string_pos("arm", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
		spec = 2
	}
	if (string_pos("hair", mystring_l) > 0)
	{
		beaut += 2
		nice += 1
		spec = 3
	}
	if (global.language == "ja")
	{
		if (string_pos("かっこいい", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("いけめん", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("せくしー", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("ほっと", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("はんさむ", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("ごーじゃす", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("ちゃーみんぐ", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("すてき", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("かわいい", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("うつくしい", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("えれがんと", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("びだんし", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("びしょうねん", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("びなん", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("きれい", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("いけてる", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("みりょくてき", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("みわく", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("びぼう", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("じょうひん", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("ゆうが", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("ゆうび", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("きひん", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("もてもて", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("もてる", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("さいこう", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("さいこー", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("きりょうよし", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("うるわしい", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("せいたん", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("りそうてき", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("ましょう", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("ゆうわく", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("のうさつ", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
		}
		if (string_pos("あし", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
			spec = 1
		}
		if (string_pos("うで", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
			spec = 2
		}
		if (string_pos("かみ", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
			spec = 3
		}
		if (string_pos("へあすたいる", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
			spec = 3
		}
		if (string_pos("へあーすたいる", mystring_l) > 0)
		{
			beaut += 2
			nice += 1
			spec = 3
		}
	}
	if (beaut > 1)
		global.msg[0] = scr_gettext("obj_essaystuff_219")
	if (beaut > 3)
		global.msg[0] = scr_gettext("obj_essaystuff_220")
	if (beaut > 5)
		global.msg[0] = scr_gettext("obj_essaystuff_221")
	if (beaut > 7)
		global.msg[0] = scr_gettext("obj_essaystuff_222")
	if (spec == 1)
		global.msg[0] = scr_gettext("obj_essaystuff_224")
	if (spec == 2)
		global.msg[0] = scr_gettext("obj_essaystuff_225")
	if (spec == 3)
		global.msg[0] = scr_gettext("obj_essaystuff_226")
	if (string_pos("personality", mystring_l) > 0)
		spec = 3.1
	if (string_pos("voice", mystring_l) > 0)
		spec = 3.2
	if (string_pos("dancing", mystring_l) > 0)
		spec = 3.3
	if (string_pos("dance", mystring_l) > 0)
		spec = 3.3
	if (global.language == "ja")
	{
		if (string_pos("せいかく", mystring_l) > 0)
			spec = 3.1
		if (string_pos("ひとがら", mystring_l) > 0)
			spec = 3.1
		if (string_pos("こえ", mystring_l) > 0)
			spec = 3.2
		if (string_pos("うた", mystring_l) > 0)
			spec = 3.2
		if (string_pos("だんす", mystring_l) > 0)
			spec = 3.3
		if (string_pos("おどり", mystring_l) > 0)
			spec = 3.3
		if (string_pos("おどる", mystring_l) > 0)
			spec = 3.3
	}
	if (spec == 3.1)
		global.msg[0] = scr_gettext("obj_essaystuff_233")
	if (spec == 3.2)
	{
		global.msg[0] = scr_gettext("obj_essaystuff_234")
		global.msg[1] = scr_gettext("obj_essaystuff_235")
	}
	if (spec == 3.3)
		global.msg[0] = scr_gettext("obj_essaystuff_236")
	if (global.language == "ja")
	{
		if (string_pos("おもしろい", mystring_l) > 0)
			spec = 101
		if (string_pos("ひょうきん", mystring_l) > 0)
			spec = 101
		if (string_pos("わらえる", mystring_l) > 0)
			spec = 101
		if (string_pos("おもろい", mystring_l) > 0)
			spec = 101
		if (string_pos("ゆーもあ", mystring_l) > 0)
			spec = 101
		if (string_pos("ぎゃぐ", mystring_l) > 0)
			spec = 101
		if (string_pos("じょーく", mystring_l) > 0)
			spec = 101
		if (string_pos("ばくしょう", mystring_l) > 0)
			spec = 101
		if (string_pos("おわらい", mystring_l) > 0)
			spec = 101
		if (string_pos("うける", mystring_l) > 0)
			spec = 101
		if (string_pos("やばい", mystring_l) > 0)
			spec = 102
		if (string_pos("げきやば", mystring_l) > 0)
			spec = 102
		if (string_pos("えもい", mystring_l) > 0)
			spec = 103
		if (string_pos("にほんご", mystring_l) > 0)
			spec = 104
	}
	if (spec > 100)
		global.msg[0] = scr_gettext(("obj_essaystuff_ja_" + string((spec - 100))))
	if (spec == 5)
		global.msg[0] = scr_gettext("obj_essaystuff_264")
	if (string_pos("ugly", mystring_l) > 0)
		spec = 4
	if (string_pos("hideous", mystring_l) > 0)
		spec = 4
	if (string_pos("repulsive", mystring_l) > 0)
		spec = 4
	if (string_pos("unattractive", mystring_l) > 0)
		spec = 4
	if (string_pos("look bad", mystring_l) > 0)
		spec = 4
	if (string_pos("stupid", mystring_l) > 0)
		spec = 4
	if (string_pos("idiot", mystring_l) > 0)
		spec = 4
	if (string_pos("jerk", mystring_l) > 0)
		spec = 4
	if (string_pos("asshole", mystring_l) > 0)
		spec = 4
	if (string_pos("loser", mystring_l) > 0)
		spec = 4
	if (string_pos("dumbass", mystring_l) > 0)
		spec = 4
	if (string_pos("douche", mystring_l) > 0)
		spec = 4
	if (string_pos("creep", mystring_l) > 0)
		spec = 4
	if (global.language == "ja")
	{
		if (string_pos("きもい", mystring_l) > 0)
			spec = 4
		if (string_pos("ぶさめん", mystring_l) > 0)
			spec = 4
		if (string_pos("きもめん", mystring_l) > 0)
			spec = 4
		if (string_pos("さいあく", mystring_l) > 0)
			spec = 4
		if (string_pos("さいてー", mystring_l) > 0)
			spec = 4
		if (string_pos("さいてい", mystring_l) > 0)
			spec = 4
		if (string_pos("へんたい", mystring_l) > 0)
			spec = 4
		if (string_pos("きしょい", mystring_l) > 0)
			spec = 4
		if (string_pos("きしょくわるい", mystring_l) > 0)
			spec = 4
		if (string_pos("きもちわるい", mystring_l) > 0)
			spec = 4
		if (string_pos("ぶさいく", mystring_l) > 0)
			spec = 4
		if (string_pos("ぶす", mystring_l) > 0)
			spec = 4
	}
	if (spec == 4)
		global.msg[0] = scr_gettext("obj_essaystuff_255")
	if (string_pos("i love you", mystring_l) > 0)
		spec = 5
	if (string_pos("i love your", mystring_l) > 0)
		spec = 0
	if (global.language == "ja")
	{
		if (string_pos("すき", mystring_l) > 0)
			spec = 5
		if (string_pos("あいらぶゆー", mystring_l) > 0)
			spec = 5
		if (string_pos("あいしてる", mystring_l) > 0)
			spec = 5
		if (string_pos("あいしている", mystring_l) > 0)
			spec = 5
		if (string_pos("あいしてます", mystring_l) > 0)
			spec = 5
		if (string_pos("あいしています", mystring_l) > 0)
			spec = 5
	}
	if (spec == 5)
		global.msg[0] = scr_gettext("obj_essaystuff_264")
	if (string_pos("toby", mystring_l) > 0)
		spec = 6
	if (global.language == "ja")
	{
		if (string_pos("とびー", mystring_l) > 0)
			spec = 6
	}
	if (spec == 6)
		global.msg[0] = scr_gettext("obj_essaystuff_271")
	if (string_pos("fuck", mystring_l) > 0)
		swear = 1
	if (string_pos("shit", mystring_l) > 0)
		swear = 1
	if (string_pos("cock", mystring_l) > 0)
		swear = 1
	if (string_pos("pussy", mystring_l) > 0)
		swear = 1
	if (string_pos("penis", mystring_l) > 0)
		swear = 1
	if (string_pos("vagina", mystring_l) > 0)
		swear = 1
	if (string_pos("anus", mystring_l) > 0)
		swear = 1
	if (string_pos("poop", mystring_l) > 0)
		swear = 1
	if (string_pos("tity", mystring_l) > 0)
		swear = 1
	if (string_pos("titty", mystring_l) > 0)
		swear = 1
	if (string_pos("bepis", mystring_l) > 0)
		swear = 1
	if (global.language == "ja")
	{
		if (string_pos("ふぁっく", mystring_l) > 0)
			swear = 1
		if (string_pos("くそ", mystring_l) > 0)
			swear = 1
		if (string_pos("うんこ", mystring_l) > 0)
			swear = 1
		if (string_pos("うんち", mystring_l) > 0)
			swear = 1
		if (string_pos("ちんこ", mystring_l) > 0)
			swear = 1
		if (string_pos("ちんぽ", mystring_l) > 0)
			swear = 1
		if (string_pos("ちんぽこ", mystring_l) > 0)
			swear = 1
		if (string_pos("まんこ", mystring_l) > 0)
			swear = 1
		if (string_pos("けつ", mystring_l) > 0)
			swear = 1
		if (string_pos("おっぱい", mystring_l) > 0)
			swear = 1
	}
	if (swear == 1)
	{
		global.msg[0] = scr_gettext("obj_essaystuff_289")
		global.msg[1] = scr_gettext("obj_essaystuff_290")
	}
	done = 0
	if (swear == 1 && done == 0)
	{
		done = 1
		with (obj_ratingsmaster)
		{
			curtype = 12
			essay = -150
			event_user(0)
		}
	}
	if (spec == 6)
	{
		if (done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 300
				event_user(0)
			}
		}
	}
	if (spec == 5 && done == 0)
	{
		done = 1
		with (obj_ratingsmaster)
		{
			curtype = 12
			essay = 250
			event_user(0)
		}
	}
	if (spec == 4 && done == 0)
	{
		done = 1
		with (obj_ratingsmaster)
		{
			curtype = 12
			essay = -200
			event_user(0)
		}
	}
	if (spec == 1 && done == 0)
	{
		done = 1
		with (obj_ratingsmaster)
		{
			curtype = 12
			essay = 350
			event_user(0)
		}
	}
	if (spec == 2 || spec == 3)
	{
		if (done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 250
				event_user(0)
			}
		}
	}
	if (spec > 3 && spec < 4)
	{
		if (done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 250
				event_user(0)
			}
		}
	}
	if (done == 0 && spec == 104)
	{
		done = 1
		with (obj_ratingsmaster)
		{
			curtype = 12
			essay = 300
			event_user(0)
		}
	}
	if (done == 0 && spec >= 101 && spec <= 103)
	{
		done = 1
		with (obj_ratingsmaster)
		{
			curtype = 12
			essay = 250
			event_user(0)
		}
	}
	if (done == 0 && beaut > 0)
	{
		if (beaut >= 7 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 360
				event_user(0)
			}
		}
		if (beaut >= 5 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 280
				event_user(0)
			}
		}
		if (beaut >= 3 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 250
				event_user(0)
			}
		}
		if (beaut >= 1 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 200
				event_user(0)
			}
		}
	}
	if (done == 0)
	{
		if (leng >= 140 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 180
				event_user(0)
			}
		}
		if (leng >= 90 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 150
				event_user(0)
			}
		}
		if (leng >= 50 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 120
				event_user(0)
			}
		}
		if (leng >= 13 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 100
				event_user(0)
			}
		}
		if (leng <= 12 && done == 0)
		{
			done = 1
			with (obj_ratingsmaster)
			{
				curtype = 12
				essay = 80
				event_user(0)
			}
		}
	}
	ossafe_ini_open("undertale.ini")
	essaynum = ini_read_real("MTT", "EssayNo", 0)
	ini_write_real("MTT", "EssayNo", (essaynum + 1))
	ossafe_ini_close()
	ossafe_savedata_save()
	with (OBJ_WRITER)
		instance_destroy()
	con = 4
	global.typer = 51
	global.msc = 0
	blcon = instance_create((obj_mettatonex.x + 200), obj_mettatonex.y, obj_blconwdflowey)
	blconwd = instance_create((blcon.x + 20), (blcon.y - 10), OBJ_NOMSCWRITER)
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
	obj_mettatonex.attacked = 0
	with (blcon)
		instance_destroy()
	global.msg[0] = scr_gettext("obj_essaystuff_510")
	global.mnfight = 3
	global.myfight = -1
	global.turntimer = -1
	instance_destroy()
}
