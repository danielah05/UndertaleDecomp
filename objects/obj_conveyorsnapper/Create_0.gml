con = 0
if (FL_ConveyorPuzzleVariable > 0)
{
	obj_mainchara.x = (FL_ConveyorPuzzleVariable - 200)
	obj_mainchara.y = -20
	obj_mainchara.image_alpha = 0.5
	obj_mainchara.vspeed = 6
	con = 1
	alarm[3] = 4
	alarm[4] = 25
	global.phasing = 1
	FL_ConveyorPuzzleVariable = 0
}
