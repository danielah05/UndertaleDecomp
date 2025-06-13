if (con == 0 && global.interact == 0 && FL_InteractedWithGarbageSavepoint < 4)
{
	global.interact = 1
	con = 1
	mkid.sprite_index = mkid.dtsprite
	mkid.image_speed = 0.25
	remember = mkid.follow
	mkid.follow = 0
	mkid.speed = 0
	FL_InteractedWithGarbageSavepoint = 4
	global.facechoice = 0
	if (obj_mainchara.y > 908)
		obj_mainchara.y = 908
	if (obj_mainchara.y < 864)
		obj_mainchara.y = 864
	global.msg[0] = scr_gettext("obj_monsterkidtrigger5_91")
	global.msg[1] = scr_gettext("obj_monsterkidtrigger5_92")
	scr_regulartext()
}
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
	if (obj_mainchara.y > 908)
		obj_mainchara.y = 908
	if (obj_mainchara.y < 864)
		obj_mainchara.y = 864
	mkid.follow = remember
	global.interact = 0
	con = 2
	mkid.image_speed = 0
}
