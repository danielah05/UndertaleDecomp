global.inbattle = true
type = global.cast_type
if (type == 0)
{
	froggit = instance_create((col1_x - 50), 600, obj_monster_extrabody)
	froggit.type = 1
	whimsun = instance_create((col2_x - 50), 600, obj_monster_extrabody)
	whimsun.type = 2
	moldsmal = instance_create((col1_x - 50), 940, obj_monster_extrabody)
	moldsmal.type = 3
	loox = instance_create((col2_x - 50), 940, obj_monster_extrabody)
	loox.type = 6
	vegetoid = instance_create((col1_x - 50), 1280, obj_monster_extrabody)
	vegetoid.type = 7
	migosp = instance_create((col2_x - 50), 1280, obj_monster_extrabody)
	migosp.type = 5
	napstablook = instance_create(280, 1620, obj_monster_extrabody)
	napstablook.type = 4
	active = 2
}
if (type == 1)
{
	snowdrake = instance_create((col1_x - 100), 600, obj_monster_extrabody)
	snowdrake.type = 11
	icecap = instance_create((col2_x - 50), 600, obj_monster_extrabody)
	icecap.type = 10
	icecap.image_yscale = 2
	gyftrot = instance_create((col1_x - 100), 1040, obj_monster_extrabody)
	gyftrot.type = 12
	gyftrot.image_xscale = 2
	gyftrot.image_yscale = 2
	doggo = instance_create((col2_x - 50), 1040, obj_monster_extrabody)
	doggo.type = 13
	doggo.image_yscale = 2
	dogamy = instance_create(208, 1480, obj_monster_extrabody)
	dogamy.type = 14
	dogamy.image_xscale = 2
	dogamy.image_yscale = 2
	lesserdog = instance_create((col1_x - 70), 1920, obj_monster_extrabody)
	lesserdog.type = 8
	lesserdog.image_xscale = 1
	lesserdog.image_yscale = 2
	greaterdog = instance_create((col2_x - 80), 1920, obj_monster_extrabody)
	greaterdog.type = 9
	greaterdog.image_xscale = 2
	greaterdog.image_yscale = 2
	active = true
}
if (type == 2)
{
	aaron = instance_create((col1_x - 50), 600, obj_monster_extrabody)
	aaron.type = 16
	aaron.image_xscale = 2
	aaron.image_yscale = 2
	moldbygg = instance_create((col2_x - 50), 600, obj_monster_extrabody)
	moldbygg.type = 19
	moldbygg.image_yscale = 2
	woshua = instance_create((col1_x - 50), 1040, obj_monster_extrabody)
	woshua.type = 15
	temmie = instance_create((col2_x - 50), 1040, obj_monster_extrabody)
	temmie.type = 18
	temmie.image_yscale = 1
	if (FL_MadMewMewStatus < MadMewMewStatus.Spared)
	{
		maddummy = instance_create((col1_x - 50), 1380, obj_monster_extrabody)
		maddummy.type = 20
		maddummy.image_xscale = 1
		maddummy.image_yscale = 2
	}
	else
	{
		mewmew = instance_create((col1_x - 50), 1380, obj_monster_extrabody)
		mewmew.type = 40
		mewmew.image_xscale = 1
		mewmew.image_yscale = 2
	}
	shyren = instance_create((col2_x - 50), 1380, obj_monster_extrabody)
	shyren.type = 17
	shyren.image_xscale = 1
	shyren.image_yscale = 2
	active = true
}
if (type == 3)
{
	vulkin = instance_create((col1_x - 50), 700, obj_monster_extrabody)
	vulkin.type = 22
	tsunderplane = instance_create((col2_x - 90), 600, obj_monster_extrabody)
	tsunderplane.image_yscale = 2
	tsunderplane.image_xscale = 2
	tsunderplane.type = 23
	pyrope = instance_create((col1_x - 50), 1040, obj_monster_extrabody)
	pyrope.image_yscale = 2
	pyrope.type = 24
	muffet = instance_create((col2_x - 95), 1040, obj_monster_extrabody)
	muffet.image_yscale = 2
	muffet.image_xscale = 2
	muffet.type = 25
	knighta = instance_create(150, 1480, obj_monster_extrabody)
	knighta.image_yscale = 2
	knighta.image_xscale = 2
	knighta.type = 21
	finalfroggit = instance_create((col1_x - 50), 1940, obj_monster_extrabody)
	finalfroggit.type = 28
	whimsalot = instance_create((col2_x - 40), 1940, obj_monster_extrabody)
	whimsalot.type = 29
	astigmatism = instance_create(270, 2260, obj_monster_extrabody)
	astigmatism.type = 30
	madjick = instance_create((col1_x - 100), 2600, obj_monster_extrabody)
	madjick.type = 26
	madjick.image_xscale = 2
	madjick.image_yscale = 2
	knightknight = instance_create(360, 2600, obj_monster_extrabody)
	knightknight.type = 27
	knightknight.image_yscale = 2
	knightknight.image_xscale = 2
	amalgamate1 = instance_create(70, 3040, obj_monster_extrabody)
	amalgamate1.type = 32
	amalgamate1.image_xscale = 1
	amalgamate1.image_yscale = 3
	amalgamate2 = instance_create(180, 3140, obj_monster_extrabody)
	amalgamate2.type = 31
	amalgamate2.image_yscale = 1
	amalgamate2.image_xscale = 1
	amalgamate3 = instance_create(290, 3040, obj_monster_extrabody)
	amalgamate3.type = 33
	amalgamate3.image_yscale = 2
	amalgamate3.image_xscale = 2
	amalgamate4 = instance_create(500, 3140, obj_monster_extrabody)
	amalgamate4.type = 34
	amalgamate4.image_xscale = 1
	amalgamate4.image_yscale = 2
	active = true
}
