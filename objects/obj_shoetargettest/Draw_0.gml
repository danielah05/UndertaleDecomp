draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha)
if (fade == 1)
{
	image_alpha -= 0.08
	image_xscale -= 0.06
}
if (image_xscale < 0.08)
	instance_destroy()
if (instance_number(obj_targetparent) == false && hit == 0)
{
	hit = 1
	if (myscore == 0)
	{
		global.damage = 0
		global.hurtanim[global.mytarget] = 5
		fade = 1
		return;
	}
	if (myscore > 0)
	{
		mons = global.monsterinstance[global.mytarget]
		scr_attackcalc()
		damage *= ((myscore / 160) * (4 / num))
		damage = round(damage)
		global.damage = damage
		global.damage += round(random(2))
		mons.takedamage = global.damage
		global.stretch = 2
		ht = 100
		wd = 100
		mons.trgtest = id
		critter = 0
		if (myscore > (400 * (num / 4)))
			critter = 1
		with (mons)
		{
			trgtest.ht = ht
			trgtest.wd = wd
		}
		if (global.weapon == Items.BalletShoes)
		{
			instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_strongpunch)
			if (critter == 1)
			{
				with (obj_strongpunch)
					event_user(5)
			}
			global.damagetimer = 10
		}
		if (global.weapon == Items.EmptyGun)
		{
			instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_gunshot_stab)
			if (critter == 1)
			{
				with (obj_gunshot_stab)
					event_user(5)
			}
			global.damagetimer = 20
		}
		if (global.weapon == Items.BurntPan)
		{
			instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_frypan_impact)
			if (critter == 1)
			{
				with (obj_frypan_impact)
					event_user(5)
			}
			global.damagetimer = 20
		}
		if (global.weapon == Items.TornNotebook)
		{
			instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_notebook_attackanim)
			if (critter == 1)
			{
				with (obj_notebook_attackanim)
					event_user(5)
			}
			global.damagetimer = 24
		}
		global.hurtanim[global.mytarget] = 1
		fade = 1
	}
}
