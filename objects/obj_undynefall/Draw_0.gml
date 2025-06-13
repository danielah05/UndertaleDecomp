draw_sprite(sprite_index, image_index, x, y)
if (w_active == 1)
{
	obj_mainchara.visible = false
	w_timer += 1
	if (w_timer < 30)
	{
		if (xx > (thisx - 10))
			xx -= 1
		draw_sprite(spr_maincharal_water, floor((w_timer / 3)), xx, obj_mainchara.y)
	}
	if (w_timer >= 30 && w_timer < 120)
	{
		pour_index += 0.2
		draw_sprite(spr_mainchara_pourwater, floor(pour_index), xx, obj_mainchara.y)
		if (pour_index >= 5.8)
			pour_index = 4.2
	}
	if (w_timer >= 120)
	{
		pour_index += 0.2
		if (pour_index <= 7.8)
			draw_sprite(spr_mainchara_pourwater, floor(pour_index), xx, obj_mainchara.y)
		else if (xx < thisx)
		{
			xx += 1
			draw_sprite(spr_maincharal_water, floor((w_timer / 3)), xx, obj_mainchara.y)
		}
		else
		{
			FL_HaveWater = 0
			with (obj_watercooler)
				havewater = 0
			obj_mainchara.visible = true
			with (obj_mainchara)
			{
				lsprite = spr_maincharal
				usprite = spr_maincharau
				dsprite = spr_maincharad
				rsprite = spr_maincharar
			}
			w_active = 0
			con = 11
		}
	}
}
