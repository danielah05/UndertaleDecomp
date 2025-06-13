myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_heatsflamesman_75")
if (room == room_fire_elevator_r3)
{
	global.msc = 850
	if (FL_FlameyNameChoice == Choices.RememberedName)
	{
		global.msc = 0
		global.msg[0] = scr_gettext("obj_heatsflamesman_85")
	}
	if (FL_FlameyNameChoice == Choices.DidntRememberName)
	{
		global.msc = 0
		global.msg[0] = scr_gettext("obj_heatsflamesman_90")
	}
}
if (FL_TruePacifist == true)
	global.msg[0] = scr_gettext("obj_heatsflamesman_97")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
