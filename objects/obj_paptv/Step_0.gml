buffer -= 1
if (myinteract == 1 && buffer > 0)
	myinteract = 0
if (myinteract == 1)
{
	global.interact = 1
	alarm[0] = 1
	myinteract = 2
}
if (myinteract == 0)
	sprite_index = spr_flattv_off
if (conversation == 2)
{
	image_speed = 1
	sprite_index = spr_flattv_on
	caster_loop(tv, 0.75, 1)
	conversation = 3
	alarm[2] = 10
}
if (conversation == 4)
{
	if instance_exists(obj_papyrusparent)
	{
		scr_papface(0, 0)
		global.msg[1] = scr_gettext("obj_paptv_152")
		global.msg[2] = scr_gettext("obj_paptv_153")
		global.msg[3] = scr_gettext("obj_paptv_154")
		scr_papface(4, 1)
		global.msg[5] = scr_gettext("obj_paptv_156")
		global.msg[6] = scr_gettext("obj_paptv_157")
	}
	else
		global.msg[0] = scr_gettext("obj_paptv_159")
	if (read > 1)
		global.msg[0] = scr_gettext("obj_paptv_160")
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	conversation = 5
}
if (conversation == 5 && instance_exists(OBJ_WRITER) == false)
{
	read += 1
	conversation = 0
	myinteract = 0
	global.interact = 0
	if (buffer <= 0)
		snd_play(snd_chug)
	buffer = 5
	sprite_index = spr_flattv_off
	caster_stop(tv)
	caster_resume(global.currentsong)
}
