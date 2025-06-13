scr_depth(0, 0, 0, 0, 0)
if (FL_GotArtifact == 0)
{
	hasdog = false
	for (i = 0; i < InventorySize; i += 1)
	{
		if (global.item[i] == Items.AnnoyingDog)
			hasdog = 1
	}
	if (hasdog == false)
	{
		noroom = false
		scr_itemget(Items.AnnoyingDog)
		if (noroom != true)
			FL_GotArtifact = 2
	}
}
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
	myinteract = 0
	global.interact = 1
	caster_pause(global.currentsong)
	snd_play(snd_grab)
	if (global.facing != 3)
	{
		dog = instance_create((obj_mainchara.x + 30), (obj_mainchara.y + 10), obj_tobdog_pendant)
		dog.sprite_index = spr_tobdogr
	}
	else
	{
		dog = instance_create((obj_mainchara.x - 30), (obj_mainchara.y + 10), obj_tobdog_pendant)
		dog.sprite_index = spr_tobdogl
	}
	alarm[4] = 30
	con = 2
}
if (con == 3)
{
	with (dog)
		con = 1
	caster_play(dogsong, 1, 1)
	con = 4
}
if (con == 5)
{
	res = floor(random(5))
	scr_itemget((Items.DogResidue29 + res))
	global.interact = 0
	caster_stop(dogsong)
	caster_set_volume(global.currentsong, 0)
	caster_resume(global.currentsong)
	instance_create(0, 0, obj_musfadein)
	FL_GotArtifact = 1
	if (global.osflavor == OSFlavors.Switch)
	{
		ossafe_ini_open("undertale.ini")
		ini_write_real("General", "DB", 1)
		ossafe_ini_close()
		ossafe_savedata_save()
	}
	con = 6
	myinteract = 0
	anti_buffer = 0
}
if (con > 0 && con < 6)
{
	global.interact = 1
	anti_buffer = 1
}
