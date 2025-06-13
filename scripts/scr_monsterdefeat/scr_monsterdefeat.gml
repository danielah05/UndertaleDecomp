/// @func	scr_monsterdefeat()
/// @desc	Setup rewards and vapor data when killing a monster.
// Daniela: Interestingly enough, this function gets called by doing "scr_monsterdefeat(0, 0, 0, 0, 0)" by multiple monsters in the game despite there being 0 arguments present in the script?
function scr_monsterdefeat()
{
	if (killed == true)
	{
		global.xpreward[3] += global.xpreward[myself]
		global.goldreward[3] += global.goldreward[myself]
		global.vaporspeed = 0
		global.monstersprite = sprite_index
		ddd = instance_create(x, y, obj_vaporized_new)
		if (object_index == obj_greatdog)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.GreaterDog)
		}
		if (object_index == obj_gyftrot)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Gyftrot)
		}
		if (object_index == obj_icecap)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Icecap)
		}
		if (object_index == obj_jerry)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Jerry)
		}
		if (object_index == obj_lesserdoge)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.LesserDog)
		}
		if (object_index == obj_mandog)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Dogamy)
		}
		if (object_index == obj_womandog)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Dogaressa)
		}
		if (object_index == obj_movedoge)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Doggo)
		}
		if (object_index == obj_papyrusdeadbody)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.PapyrusBody)
		}
		if (object_index == obj_papyrusdeadhead)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.PapyrusHead)
		}
		if (object_index == obj_shyren)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Shyren)
		}
		if (object_index == obj_snowdrake || object_index == obj_chilldrake)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Snowdrake)
		}
		if (object_index == obj_tembattle)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Temmie)
		}
		if (object_index == obj_undyneb_body)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Undyne)
		}
		if (object_index == obj_woshua)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Woshua)
		}
		if (object_index == obj_froggit || object_index == obj_fakefroggit)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Froggit)
		}
		if (object_index == obj_whimsun)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Whimsun)
		}
		if (object_index == obj_moldsmal)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Moldsmal)
		}
		if (object_index == obj_migosp)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Migosp)
		}
		if (object_index == obj_loox)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Loox)
		}
		if (object_index == obj_vegetoid)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Vegetoid)
		}
		if (object_index == obj_torielboss)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Toriel)
		}
		if (object_index == obj_dummymonster)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Dummy)
		}
		if (object_index == obj_moldsmalx)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Moldsmal)
		}
		if (object_index == obj_vulkin)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Vulkin)
		}
		if (object_index == obj_pyrope)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Pyrope)
		}
		if (object_index == obj_bara01)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.RG01)
		}
		if (object_index == obj_bara02)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.RG02)
		}
		if (object_index == obj_wizard)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Madjick)
		}
		if (object_index == obj_finalknight)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.FinalKnight)
		}
		if (object_index == obj_finalfroggit)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.FinalFroggit)
		}
		if (object_index == obj_whimsalot)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Whimsalot)
		}
		if (object_index == obj_astigmatism)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Astigmatism)
		}
		if (object_index == obj_spiderb)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Muffet)
		}
		if (object_index == obj_migospel)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Migospel)
		}
		if (object_index == obj_parsnik)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Parsnik)
		}
		if (object_index == obj_moldessa)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Moldessa)
		}
		if (object_index == obj_glydeb)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Glyde)
		}
		if (object_index == obj_sosorry)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.SoSorry)
		}
		if (object_index == obj_icecube)
		{
			with (ddd)
				scr_newvapordata(NewMonsterVapor.Icecube)
		}
		ddd.sprite_index = sprite_index
		ddd.ht = ht
		ddd.wd = wd
		if (object_index == obj_snowdrake)
			ddd.wd = 210
		if (object_index == obj_chilldrake)
			ddd.wd = 210
		if (object_index == obj_dummymonster)
			ddd.ht = 106
		if (object_index == obj_moldsmal)
			ddd.ht = 84
		ddd.image_speed = 0
		ddd.image_index = 1
		global.kills += 1
		global.areapop[global.area] -= 1
		if (global.areapop[global.area] < 0)
			global.areapop[global.area] = 0
		FL_KilledLast = true
	}
	if (killed == 0)
	{
		global.goldreward[3] += floor((global.goldreward[myself] * ((global.monstermaxhp[myself] - global.monsterhp[myself]) / global.monstermaxhp[myself])))
		global.monstersprite = sprite_index
		ddd = instance_create(x, y, obj_spared)
		ddd.image_speed = 0
		ddd.image_index = 1
		FL_SparedLast = true
		FL_SparedCount += 1
	}
	global.monster[myself] = false
}
