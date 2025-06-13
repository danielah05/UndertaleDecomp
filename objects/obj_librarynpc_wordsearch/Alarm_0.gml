myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_librarynpc_wordsearch_70")
global.msg[1] = scr_gettext("obj_librarynpc_wordsearch_71")
global.msg[2] = scr_gettext("obj_librarynpc_wordsearch_72")
global.msg[3] = scr_gettext("obj_librarynpc_wordsearch_73")
global.msg[4] = scr_gettext("obj_librarynpc_wordsearch_74")
if (global.plot >= 122)
{
	global.msg[0] = scr_gettext("obj_librarynpc_wordsearch_78")
	global.msg[1] = scr_gettext("obj_librarynpc_wordsearch_79")
	global.msg[2] = scr_gettext("obj_librarynpc_wordsearch_80")
}
if (FL_TruePacifist == true)
{
	global.msg[0] = scr_gettext("obj_librarynpc_wordsearch_85")
	global.msg[1] = scr_gettext("obj_librarynpc_wordsearch_86")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
