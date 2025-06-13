myinteract = 0
facing = Direction.Down
direction = 270
talkedto = 0
image_speed = 0.1
carry = 0
sinoid = 0
clamp_r = 0
right = 0
if (FL_TruePacifist == false)
	birdsong = caster_load("music/birdsong.ogg")
if (global.entrance == 20 && global.plot > 115)
{
	x = 100
	right = 1
}
if (scr_murderlv() >= MurderLevel.Lv10GladDummyKilled && FL_SparedSpecific == 0)
	y = 900
