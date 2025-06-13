buffer = 0
ammo = 0
moved = 0
gridl = 120
gridr = 180
gridu = 60
gridd = 120
active = false
myinteract = 0
snd = 0
win = 0
wincon = 0
wintimer = 0
idealammo = 0
restart = false
rstype = 0
if (room == room_fire_shootguy_1 && FL_CompletedShootPuzzle2 == true)
	win = 1
if (room == room_fire_shootguy_2 && FL_CompletedShootPuzzle1 == true)
	win = 1
if (room == room_fire_shootguy_3 && FL_CompletedShootPuzzle3 == true)
	win = 1
if (room == room_fire_shootguy_4 && FL_CompletedShootPuzzle4 == true)
	win = 1
if (room == room_fire_shootguy_5 && FL_CompletedShootPuzzleCore == true)
	win = 1
if (room == room_fire_shootguy_3)
{
	gridu = 40
	gridl = 120
	gridr = 220
	gridd = 120
}
if (room == room_fire_shootguy_4)
{
	gridu = 20
	gridl = 120
	gridr = 220
	gridd = 120
}
alarm[1] = 1
