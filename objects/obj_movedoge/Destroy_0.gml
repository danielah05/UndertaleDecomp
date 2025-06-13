if (mercymod > 80 && mercymod < 400)
	FL_DoggoStatus = DogStatus.SparedWithStick
if (killed == 1)
	FL_DoggoStatus = DogStatus.Killed
if (killed == 0)
	FL_SparedSpecific = 1
global.plot = 41
wd = 134
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
	instance_destroy()
with (mypart2)
	instance_destroy()
with (mypart3)
	instance_destroy()
with (mypart4)
	instance_destroy()
global.goldreward[3] = 30
