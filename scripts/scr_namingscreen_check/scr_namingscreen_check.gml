function scr_namingscreen_check()
{
	demonx = "Part of this game's charm is the mystery of how many options or secrets there are. If you are reading this, please don't post this message or this information anywhere. Or doing secrets will become pointless."
	var l_char = string_to_hiragana(string_lower(argument0))
	if (l_char == "aaaaaa" || l_char == "ああああああ")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "ほんとに#これでいいの…？"
		else
			spec_m = "Not very creative...?"
	}
	else if (l_char == "asgore" || l_char == "あずごあ")
	{
		allow = 0
		if (global.language == "ja")
			spec_m = "そのなまえは　ダメだ。"
		else
			spec_m = "You cannot."
	}
	else if (l_char == "toriel" || l_char == "とりえる")
	{
		allow = 0
		if (global.language == "ja")
			spec_m = "ちゃんと　なまえを#かんがえるのよ。"
		else
			spec_m = "I think you should#think of your own#name, my child."
	}
	else if (l_char == "sans" || l_char == "さんず")
	{
		allow = 0
		if (global.language == "ja")
			spec_m = "ダメだぜ。"
		else
			spec_m = "nope."
	}
	else if (l_char == "undyne" || l_char == "あんだいん")
	{
		allow = 0
		if (global.language == "ja")
			spec_m = "ひとの　なまえを#パクるな！"
		else
			spec_m = "Get your OWN name!"
	}
	else if (l_char == "flowey" || l_char == "ふらうぃ")
	{
		allow = 0
		if (global.language == "ja")
			spec_m = "そのなまえは#ボクだけのもの。"
		else
			spec_m = "I already CHOSE#that name."
	}
	else if (l_char == "chara" || l_char == "きゃら")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "ほんとうのなまえ。"
		else
			spec_m = "The true name."
	}
	else if (l_char == "alphys" || l_char == "あるふぃー")
	{
		allow = 0
		if (global.language == "ja")
			spec_m = "ダ…　ダメだよっ！"
		else
			spec_m = "D-don't do that."
	}
	else if (l_char == "alphy" || l_char == "あるっち")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "う…　うん#いいよ…"
		else
			spec_m = "Uh... OK?"
	}
	else if (l_char == "papyru" || l_char == "ぱぴるす")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "オレさまは#べつに#いいよッ！"
		else
			spec_m = "I'LL ALLOW IT!!!!"
	}
	else if (l_char == "napsta" || l_char == "blooky" || l_char == "なぷすた" || l_char == "ぶるっち")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "…………#(とめるちからは　ない)"
		else
			spec_m = "...........#(They're powerless to#stop you.)"
	}
	else if (l_char == "murder" || l_char == "mercy" || l_char == "ころす" || l_char == "みのがす")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "こんな　なまえで#いいんですか？"
		else
			spec_m = "That's a little on-#the nose, isn't it...?"
	}
	else if (l_char == "asriel" || l_char == "あずりえる")
	{
		allow = 0
		if (global.language == "ja")
			spec_m = "…"
		else
			spec_m = "..."
	}
	else if (l_char == "catty" || l_char == "きゃってぃ")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "アリゲッティ！　みて！#アタシのなまえ#だしぃ～！"
		else
			spec_m = "Bratty! Bratty!#That's MY name!"
	}
	else if (l_char == "bratty" || l_char == "ありげってぃ")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "べつに　いいけどぉ～？"
		else
			spec_m = "Like, OK I guess."
	}
	else if (l_char == "mtt" || l_char == "metta" || l_char == "mett" || l_char == "めた" || l_char == "めたとん")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "おお！！キミ！！#せんでん　してくれるのかい？"
		else
			spec_m = "OOOOH!!! ARE YOU#PROMOTING MY BRAND?"
	}
	else if (l_char == "gerson" || l_char == "がーそん")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "ワッハッハッ！#そりゃあいい！"
		else
			spec_m = "Wah ha ha! Why not?"
	}
	else if (l_char == "shyren" || l_char == "しゃいれーん")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "…？"
		else
			spec_m = "...?"
	}
	else if (l_char == "aaron" || l_char == "あーろん")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "このなまえで#よろしいですか？(^_–)☆ "
		else
			spec_m = "Is this name correct? ; )"
	}
	else if (l_char == "temmie" || l_char == "てみー")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "ホィ！"
		else
			spec_m = "hOI!"
	}
	else if (l_char == "woshua" || l_char == "うぉっしゅあ")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "せいけつな　なまえ。"
		else
			spec_m = "Clean name."
	}
	else if (l_char == "jerry" || l_char == "じぇりー")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "ジェリー。"
		else
			spec_m = "Jerry."
	}
	else if (l_char == "bpants" || l_char == "ばがぱん")
	{
		allow = 1
		if (global.language == "ja")
			spec_m = "…なまえの#ネタぎれ？"
		else
			spec_m = "You are really scraping the#bottom of the barrel."
	}
	else if (l_char == "gaster" || l_char == "がすたー")
		game_restart()
	else
	{
		allow = 1
		spec_m = scr_gettext("name_entry_confirm")
	}
}
