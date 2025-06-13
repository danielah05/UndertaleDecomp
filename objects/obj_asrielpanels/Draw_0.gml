if (active == true)
{
	if (on < 3)
		draw_sprite_ext(sprite_index, image_index, 120, 56, 2, 2, 0, c_white, image_alpha)
	if (on == 1 && image_alpha < 1)
		image_alpha += 0.06
	if (on == 0 && image_alpha > 0)
	{
		if (image_index < 4)
			image_alpha -= 0.06
		else
		{
			on = 2
			memtimer = 250
			wht = 0
		}
	}
	memtimer += 1
	if (memtimer == 120)
		on = 0
	if (memtimer == 138)
		image_index += 1
	if (memtimer == 141)
	{
		on = 1
		memtimer = 0
	}
	if (on == 2)
	{
		wht += 0.02
		draw_set_alpha(wht)
		draw_set_color(c_white)
		ossafe_fill_rectangle(-10, -10, 999, 999)
		draw_set_alpha(1)
		if (wht > 1.18)
		{
			on = 3
			global.battlegroup = BattleGroup.AsrielFinal
			FL_AsrielFightConvoCounter = 3
			do_room_goto = true
		}
	}
	if (on == 3)
	{
		wht -= 0.05
		draw_set_alpha(wht)
		draw_set_color(c_white)
		ossafe_fill_rectangle(-10, -10, 999, 999)
		draw_set_alpha(1)
		if (wht < 0)
			on = 4
	}
	xtimer += 1
	qual = 0
	if (xtimer == 2263)
		qual = 1
	if (caster_is_playing(global.batmusic) == false && caster_is_playing(global.batmusic2) == false)
		qual = 1
	if (qual == 1)
	{
		xtimer = 2266
		caster_loop(global.batmusic2, thisvol, 0.85)
	}
}
