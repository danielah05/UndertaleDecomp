myinteract = 0
facing = Direction.Down
talkedto = 0
image_speed = 0
scr_depth()
if (FL_GlowshroomsOn == 0)
	FL_GlowshroomsOn = 1
if (scr_murderlv() >= MurderLevel.Lv10GladDummyKilled)
	instance_destroy()
con = 0
buffer = 0
