if (conversation == 1)
{
	obj_mainchara.x += 4
	global.facing = Direction.Right
	global.msc = 0
	global.typer = 19
	global.facechoice = 4
	global.faceemotion = 0
	global.interact = 1
	global.msg[0] = scr_gettext("obj_puzzlewall1_62")
	global.msg[1] = scr_gettext("obj_puzzlewall1_63")
	if (talkedto == 1)
	{
		global.msg[0] = scr_gettext("obj_puzzlewall1_66")
		global.msg[1] = scr_gettext("obj_puzzlewall1_67")
	}
	if (talkedto > 1)
		global.msg[0] = scr_gettext("obj_puzzlewall1_71")
	talkedto += 1
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 2
}
if (conversation == 2)
	global.facing = Direction.Right
if (conversation == 2 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 0
	conversation = 0
}
