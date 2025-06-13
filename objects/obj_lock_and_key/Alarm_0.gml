myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_lock_and_key_66")
global.msg[1] = scr_gettext("obj_lock_and_key_67")
global.msg[2] = scr_gettext("obj_lock_and_key_68")
global.msg[3] = scr_gettext("obj_lock_and_key_69")
if (scr_murderlv() >= MurderLevel.Lv16MettatonKilled)
	global.msg[0] = scr_gettext("obj_lock_and_key_73")
if (FL_UnlockedNewHomeLatch == 0.5)
{
	global.msg[0] = scr_gettext("obj_lock_and_key_78")
	if (scr_murderlv() >= MurderLevel.Lv16MettatonKilled)
		global.msg[0] = scr_gettext("obj_lock_and_key_82")
}
if (FL_HaveCastleKey1 == 1 && FL_HaveCastleKey2 == 1)
{
	FL_UnlockedNewHomeLatch = 1
	global.msg[0] = scr_gettext("obj_lock_and_key_90")
	if (scr_murderlv() >= MurderLevel.Lv16MettatonKilled)
		global.msg[0] = scr_gettext("obj_lock_and_key_94")
	con = 2
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
if (FL_UnlockedNewHomeLatch == 0)
	FL_UnlockedNewHomeLatch = 0.5
