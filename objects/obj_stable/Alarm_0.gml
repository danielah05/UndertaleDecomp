myinteract = 3
global.msc = 0
global.typer = 5
global.msg[0] = "error/%%"
if (FL_StableStatus == 0)
{
	global.msc = 593
	global.typer = 5
}
if (FL_StableStatus > 0)
{
	global.msc = 595
	if (FL_StableStatus == 2)
		global.msc = 596
	if (FL_StableStatus == 3)
		global.msc = 597
	global.typer = 34
}
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* test/%%"
if (FL_StableStatus != 4)
{
	mydialoguer = instance_create(0, 0, obj_dialoguer)
	talkedto += 1
}
else
	bibblybeebly = 349382
