if (con == 0 && global.interact == 0)
{
	other.x = other.xprevious
	other.y = other.yprevious
	global.interact = 1
	con = 1
	mkid.sprite_index = mkid.dtsprite
	mkid.image_speed = 0.25
	global.msc = 0
	global.typer = 5
}
if (con == 6 && global.interact == 0)
{
	con = 7
	global.interact = 1
	other.x = other.xprevious
	other.y = other.yprevious
	mkid.sprite_index = mkid.ltsprite
	mkid.image_speed = 0.25
	global.msc = 0
	global.facechoice = 0
	global.typer = 5
	global.msg[0] = scr_gettext("obj_monsterkidtrigger3_284")
	global.msg[1] = scr_gettext("obj_monsterkidtrigger3_285")
	if (numero > 0)
		global.msg[0] = scr_gettext("obj_monsterkidtrigger3_286")
	instance_create(0, 0, obj_dialoguer)
}
