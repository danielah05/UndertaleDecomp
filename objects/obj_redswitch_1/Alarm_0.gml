if (room == room_ruins15B || room == room_ruins15D)
{
	global.interact = 4
	global.phasing = 1
	if (room == room_ruins15B)
		FL_WrongSwitchesPressedCount += 1
	alarm[1] = 30
	alarm[2] = 30
	snd_play(snd_noise)
	instance_create(obj_mainchara.x, (obj_mainchara.y + 20), obj_cosmetichole)
}
else
{
	myinteract = 3
	if (room == room_ruins15A)
		global.msc = 519
	if (room == room_ruins15C)
		global.msc = 521
	global.typer = 5
	global.facechoice = 0
	global.faceemotion = 0
	mydialoguer = instance_create(0, 0, obj_dialoguer)
}
