scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
if (conversation == 2 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 1
	instance_create(0, 0, obj_unfader)
	alarm[5] = 20
	m = instance_create(0, 0, obj_musfadeout)
	m.fadespeed = 0.05
	conversation = 3
}
if (conversation == 6)
{
	if (global.hp < global.maxhp)
		global.hp = global.maxhp
	if (global.hp == 36)
		global.hp = 38
	if (global.hp == 32)
		global.hp = 36
	if (global.hp == 28)
		global.hp = 34
	if (global.hp == 24)
		global.hp = 32
	if (global.hp == 20)
		global.hp = 30
	global.msc = 0
	global.msg[0] = scr_gettext("obj_townnpc_innlady_199")
	global.msg[1] = scr_gettext("obj_townnpc_innlady_200")
	if (FL_InnStatus == InnStatus.Stayed)
		global.msg[2] = scr_gettext("obj_townnpc_innlady_203")
	if (FL_InnStatus == InnStatus.StayedWithLessThan80Gold)
		global.msg[2] = scr_gettext("obj_townnpc_innlady_207")
	instance_create(0, 0, obj_dialoguer)
	conversation = 7
}
if (conversation == 7 && instance_exists(OBJ_WRITER) == false)
{
	conversation = 0
	global.interact = 0
	myinteract = 0
	FL_StayedAtInn = 0
}
