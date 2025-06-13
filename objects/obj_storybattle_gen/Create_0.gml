skipper = 0
ossafe_ini_open("undertale.ini")
tale = ini_read_real("General", "Tale", 0)
ossafe_ini_close()
if (tale > 0)
	skipper = 1
off = 0
activetimer = -6
global.turntimer = 15
global.myfight = -1
global.mnfight = -1
flowey = 0
shake = 0
if (scr_murderlv() < MurderLevel.Lv16MettatonKilled)
{
	global.turntimer = 15
	global.myfight = -1
	global.mnfight = -1
	global.hurtanim[0] = 0
	global.hurtanim[1] = 0
	global.hurtanim[2] = 0
	global.monstertype[0] = MonsterType.Dummy
	global.monstertype[1] = MonsterType.Dummy
	global.monstertype[2] = MonsterType.Dummy
	if (FL_EarlyStoryProgressCounter == 0)
	{
		con = 5
		m1 = instance_create(100, 140, obj_froggit)
		m2 = instance_create(450, 140, obj_froggit)
	}
	if (FL_EarlyStoryProgressCounter == 1)
	{
		con = 10
		m1 = instance_create(100, 140, obj_whimsun)
		m2 = instance_create(450, 140, obj_whimsun)
	}
	if (FL_EarlyStoryProgressCounter == 2)
	{
		con = 15
		m1 = instance_create(80, 140, obj_moldsmal)
		m2 = instance_create(270, 140, obj_moldsmal)
		m3 = instance_create(470, 140, obj_moldsmal)
	}
	if (FL_EarlyStoryProgressCounter == 3)
	{
		con = 25
		m1 = instance_create(100, 140, obj_migosp)
		m2 = instance_create(450, 140, obj_migosp)
	}
	if (FL_EarlyStoryProgressCounter == 4)
	{
		con = 30
		m1 = instance_create(80, 140, obj_vegetoid)
		m2 = instance_create(270, 140, obj_vegetoid)
		m3 = instance_create(470, 140, obj_vegetoid)
	}
	if (FL_EarlyStoryProgressCounter == 5)
	{
		con = 40
		m1 = instance_create(100, 140, obj_loox)
		m2 = instance_create(450, 140, obj_loox)
	}
	if (FL_EarlyStoryProgressCounter == 6)
	{
		con = 50
		m1 = instance_create(50, 20, obj_snowdrake)
		m2 = instance_create(450, 20, obj_snowdrake)
	}
	if (FL_EarlyStoryProgressCounter == 7)
	{
		con = 60
		m1 = instance_create(70, 110, obj_icecap)
		m2 = instance_create(260, 110, obj_icecap)
		m3 = instance_create(460, 110, obj_icecap)
	}
	if (FL_EarlyStoryProgressCounter == 8)
	{
		con = 70
		m1 = instance_create(80, 140, obj_woshua)
		m2 = instance_create(270, 140, obj_woshua)
		m3 = instance_create(470, 140, obj_woshua)
	}
	if (FL_EarlyStoryProgressCounter == 9)
	{
		con = 80
		m1 = instance_create(80, 130, obj_shyren)
		m2 = instance_create(270, 130, obj_shyren)
		m3 = instance_create(470, 130, obj_shyren)
	}
	if (FL_EarlyStoryProgressCounter == 10)
	{
		con = 90
		m1 = instance_create(80, 140, obj_dummymonster)
		m2 = instance_create(270, 140, obj_dummymonster)
		m3 = instance_create(470, 140, obj_dummymonster)
	}
	if (FL_EarlyStoryProgressCounter == 11)
	{
		con = 100
		global.monsterinstance[0] = instance_create(0, 20, obj_finalknight)
		obj_finalknight.myself = 1
		global.monsterinstance[1] = instance_create(470, 80, obj_wizard)
		obj_wizard.myself = 1
	}
	if (FL_EarlyStoryProgressCounter == 12)
	{
		con = 110
		global.monsterinstance[0] = instance_create(80, 118, obj_finalfroggit)
		global.monsterinstance[1] = instance_create(270, 118, obj_finalfroggit)
		global.monsterinstance[2] = instance_create(470, 118, obj_finalfroggit)
	}
	if (FL_EarlyStoryProgressCounter == 13)
	{
		con = 120
		global.monsterinstance[0] = instance_create(80, 140, obj_whimsalot)
		global.monsterinstance[1] = instance_create(270, 140, obj_whimsalot)
		global.monsterinstance[2] = instance_create(470, 140, obj_whimsalot)
	}
	if (FL_EarlyStoryProgressCounter == 14)
	{
		con = 130
		global.monsterinstance[0] = instance_create(80, 130, obj_astigmatism)
		global.monsterinstance[1] = instance_create(270, 130, obj_astigmatism)
		global.monsterinstance[2] = instance_create(470, 130, obj_astigmatism)
	}
	if (FL_EarlyStoryProgressCounter == 15)
	{
		con = 140
		m1 = instance_create(80, 160, obj_moldsmal)
		m2 = instance_create(270, 120, obj_loox)
		m3 = instance_create(470, 140, obj_migosp)
	}
	if (FL_EarlyStoryProgressCounter == 16)
	{
		con = 150
		global.monsterinstance[0] = instance_create(40, 10, obj_pyrope)
		global.monsterinstance[1] = instance_create(200, 120, obj_vulkin)
		global.monsterinstance[2] = instance_create(430, 120, obj_vulkin)
	}
	if (FL_EarlyStoryProgressCounter == 17)
	{
		con = 160
		activetimer = -45
		m1 = instance_create(270, 120, obj_froggit)
	}
}
else
{
	flowey = 1
	shake = 0
	global.faceemotion = 1
	floweyx = 281
	floweyy = 134
	alarm[4] = 15
	if (FL_EarlyStoryProgressCounter == 0)
		con = 299
	if (FL_EarlyStoryProgressCounter == 1)
		con = 304
	if (FL_EarlyStoryProgressCounter == 2)
		con = 309
	if (FL_EarlyStoryProgressCounter == 3)
		con = 314
	if (FL_EarlyStoryProgressCounter == 4)
		con = 319
	if (FL_EarlyStoryProgressCounter == 5)
		con = 324
	if (FL_EarlyStoryProgressCounter == 6)
		con = 329
	if (FL_EarlyStoryProgressCounter == 7)
		con = 334
	if (FL_EarlyStoryProgressCounter == 8)
		con = 339
	if (FL_EarlyStoryProgressCounter == 9)
		con = 344
	if (FL_EarlyStoryProgressCounter == 10)
		con = 349
	if (FL_EarlyStoryProgressCounter == 11)
		con = 354
	if (FL_EarlyStoryProgressCounter == 12)
		con = 359
	if (FL_EarlyStoryProgressCounter == 13)
		con = 364
	if (FL_EarlyStoryProgressCounter == 14)
		con = 369
	if (FL_EarlyStoryProgressCounter == 15)
		con = 374
	if (FL_EarlyStoryProgressCounter == 16)
		con = 379
	if (FL_EarlyStoryProgressCounter == 17)
	{
		con = 389
		global.faceemotion = 10
	}
}
