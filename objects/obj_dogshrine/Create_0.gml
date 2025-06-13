if (global.osflavor != OSFlavors.Playstation && global.osflavor != OSFlavors.Switch)
	room_goto(room_of_dog)
dogtimer = 0
image_speed = 0.1
x = 146
y = 49
if (caster_is_playing(global.currentsong) != 1)
{
	if (FL_DogShrineLevel >= 6)
	{
		global.currentsong = mus_dogshrine_2
		caster_loop(global.currentsong, 1, 1)
	}
	else
	{
		global.currentsong = mus_dogshrine_1
		caster_loop(global.currentsong, 1, 1)
	}
}
doglevel = FL_DogShrineLevel
if (doglevel == 1 && FL_DogShrineStateAcknowledged == 1)
	FL_DogShrineStateAcknowledged = 2
if (doglevel == 15)
	FL_DogShrineStateAcknowledged = 6
if (FL_DogShrineGDeposited >= FL_DogShrineGoldNeeded)
	FL_DogShrineGDeposited = 0
if (FL_DogShrineLevel == 0)
	FL_DogShrineGoldNeeded = 2
if (FL_DogShrineLevel == 1)
	FL_DogShrineGoldNeeded = 4
if (FL_DogShrineLevel == 2)
	FL_DogShrineGoldNeeded = 6
if (FL_DogShrineLevel == 3)
	FL_DogShrineGoldNeeded = 8
if (FL_DogShrineLevel == 4)
	FL_DogShrineGoldNeeded = 10
if (FL_DogShrineLevel == 5)
	FL_DogShrineGoldNeeded = 13
if (FL_DogShrineLevel == 6)
	FL_DogShrineGoldNeeded = 16
if (FL_DogShrineLevel == 7)
	FL_DogShrineGoldNeeded = 19
if (FL_DogShrineLevel == 8)
	FL_DogShrineGoldNeeded = 22
if (FL_DogShrineLevel == 9)
	FL_DogShrineGoldNeeded = 25
if (FL_DogShrineLevel == 10)
	FL_DogShrineGoldNeeded = 30
if (FL_DogShrineLevel == 11)
	FL_DogShrineGoldNeeded = 35
if (FL_DogShrineLevel == 12)
	FL_DogShrineGoldNeeded = 40
if (FL_DogShrineLevel == 13)
	FL_DogShrineGoldNeeded = 50
if (FL_DogShrineLevel == 14)
	FL_DogShrineGoldNeeded = 70
if (FL_DogShrineLevel == 15)
	FL_DogShrineGoldNeeded = 0
dogshrine = scr_marker(0, 0, spr_dogshrine)
with (dogshrine)
	depth = 900000
donationbox = scr_marker(137, 76, spr_ds_donationbox)
with (donationbox)
{
	depth = 860000
	mysolid = instance_create(x, (y - 5), obj_solidsmall)
	myint = instance_create((x + 8), (y - 5), obj_readable_room5)
	myint.image_xscale = 1.5
	mysolid.image_xscale = 2.2
	myint.dognumber = 1
}
if (doglevel >= 1)
{
	fairylights = scr_marker(46, 6, spr_ds_fairylights)
	with (fairylights)
		depth = 960000
}
if (doglevel >= 2)
{
	dango = scr_marker(226, 160, spr_ds_dango)
	with (dango)
	{
		scr_depth()
		mysolid = instance_create(x, (y + 8), obj_solidsmall)
		myint = instance_create(x, (y + 8), obj_readable_room5)
		myint.image_xscale = 0.8
		mysolid.image_xscale = 0.8
		myint.dognumber = 2
	}
}
if (doglevel >= 6)
{
	boombox = scr_marker(232, 80, spr_ds_boombox)
	with (boombox)
	{
		scr_depth()
		mysolid = instance_create(x, (y - 2), obj_solidsmall)
		myint = instance_create(x, (y - 2), obj_readable_room5)
		myint.image_xscale = 1.4
		mysolid.image_xscale = 1.4
		myint.dognumber = 3
	}
}
if (doglevel >= 7)
{
	cd = scr_marker(256, 112, spr_ds_cd)
	with (cd)
	{
		depth = 900000
		myint = instance_create(x, y, obj_readable_room5)
		myint.image_xscale = 0.5
		myint.image_yscale = 0.3
		myint.dognumber = 4
	}
}
if (doglevel >= 5)
{
	with (dogshrine)
		image_index = 1
}
if (doglevel >= 3)
{
	ad = scr_marker(48, 42, spr_ds_advertisement)
	with (ad)
	{
		scr_depth()
		image_speed = 0.2
		mysolid = instance_create((x + 22), (y + 58), obj_solidsmall)
		myint = instance_create((x + 22), (y + 58), obj_readable_room5)
		myint.image_yscale = 0.8
		mysolid.image_yscale = 0.8
		myint.dognumber = 5
	}
}
if (doglevel >= 4)
{
	photo1 = scr_marker(194, 160, spr_ds_papphoto)
	with (photo1)
	{
		scr_depth()
		mysolid = instance_create(x, (y + 8), obj_solidsmall)
		myint = instance_create(x, (y + 8), obj_readable_room5)
		myint.image_xscale = 0.8
		mysolid.image_xscale = 0.8
		myint.dognumber = 6
	}
}
if (doglevel >= 8)
{
	photo2 = scr_marker(108, 80, spr_ds_papphoto)
	with (photo2)
	{
		scr_depth()
		mysolid = instance_create(x, (y - 4), obj_solidsmall)
		myint = instance_create(x, (y - 4), obj_readable_room5)
		myint.image_xscale = 0.8
		mysolid.image_xscale = 0.8
		myint.dognumber = 7
	}
}
if (doglevel >= 9)
{
	rope1 = scr_marker(60, 150, spr_ds_rope)
	with (rope1)
	{
		depth = 900000
		myint = instance_create((x - 3), (y + 4), obj_readable_room5)
		myint.image_yscale = 0.6
		myint.dognumber = 8
	}
}
if (doglevel >= 10)
{
	with (dogshrine)
		image_index = 2
	with (donationbox)
		image_index = 1
}
if (doglevel >= 11)
{
	dogtap = scr_marker(257, 136, spr_ds_dogtap)
	with (dogtap)
	{
		scr_depth()
		mysolid = instance_create(x, (y + 13), obj_solidsmall)
		myint = instance_create(x, (y + 13), obj_readable_room5)
		myint.image_yscale = 0.8
		mysolid.image_yscale = 0.8
		myint.dognumber = 9
	}
}
if (doglevel >= 12)
{
	blueprint = scr_marker(88, 162, spr_ds_blueprints)
	with (blueprint)
	{
		depth = 900000
		myint = instance_create((x + 2), (y - 1), obj_readable_room5)
		myint.image_yscale = 0.6
		myint.image_xscale = 2
		myint.dognumber = 10
	}
}
if (doglevel >= 13)
{
	rope2 = scr_marker(52, 124, spr_ds_rope)
	with (rope2)
	{
		depth = 900000
		myint = instance_create((x - 3), (y + 4), obj_readable_room5)
		myint.image_yscale = 0.6
		myint.dognumber = 11
	}
}
if (doglevel >= 14)
{
	cert = scr_marker(193, 67, spr_ds_certification)
	with (cert)
	{
		scr_depth()
		mysolid = instance_create((x + 1), (y + 4), obj_solidsmall)
		myint = instance_create((x + 1), (y + 4), obj_readable_room5)
		myint.image_xscale = 1
		mysolid.image_xscale = 1
		myint.dognumber = 12
	}
}
if (doglevel >= 15)
{
	with (dogshrine)
		image_index = 3
	with (donationbox)
		image_index = 2
}
