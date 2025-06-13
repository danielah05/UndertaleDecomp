talked = false
whatiheard = -1
global.mnfight = 2
if (global.hp > 1 && FL_YellowButtonStatus == YellowButtonStatus.Available)
	global.border = 6
if (turns == 0)
	global.border = 0
if (con == 10)
{
	global.border = 6
	con = 11
}
