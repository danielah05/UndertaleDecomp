level = 1
bgalpha = 1
block[0] = instance_create(160, 54, obj_solidthin)
block[1] = instance_create(160, 77, obj_solidthin)
block[2] = instance_create(280, 54, obj_solidthin)
block[3] = instance_create(280, 77, obj_solidthin)
block[4] = instance_create(83, 90, obj_solidlong)
block[5] = instance_create(180, 60, obj_solidsmall)
block[6] = instance_create(180, 80, obj_solidsmall)
if (global.osflavor == OSFlavors.Playstation || global.osflavor == OSFlavors.Switch || global.osflavor == OSFlavors.XboxOne)
	dogdoor = instance_create(212, 57, obj_doorXmusicfade)
else
	dogdoor = noone
with (block[0])
	instance_destroy()
with (block[1])
	instance_destroy()
with (block[2])
	instance_destroy()
with (block[3])
	instance_destroy()
with (block[5])
	instance_destroy()
with (block[6])
	instance_destroy()
if (dogdoor != noone)
{
	with (dogdoor)
		instance_destroy()
	dogdoor = noone
}
fridgex = obj_papfridge.x
fridgey = obj_papfridge.y
sinkx = obj_papsink.x
sinky = obj_papsink.y
initcheck = 0
if (FL_PapyrusDateCounter >= 4 && FL_CheckPapyrusKitchenAgain == 0)
	FL_CheckPapyrusKitchenAgain = 1
