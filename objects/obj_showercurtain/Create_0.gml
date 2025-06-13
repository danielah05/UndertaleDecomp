anim = 0
animspeed = 0.1664
drawkey = 0
con = 0
myinteract = 0
mode = 0
if (FL_ShowerCurtainAmalgamEvent == 1)
{
	mode = 2
	drawkey = 1
	size = 0.3
}
if (FL_ShowerCurtainAmalgamEvent >= 2)
{
	mode = 2
	drawkey = 0
	size = 0.3
	con = 10
}
size = 1
remy = obj_mainchara.y
onoff = 0
