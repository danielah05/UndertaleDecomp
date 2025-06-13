image_speed = 0
xxx = 0
if (x <= obj_target.x)
	hspeed = (global.attackspeed + random(global.attackspeedr))
if (x > (obj_target.x + obj_target.sprite_width))
	hspeed = (-((global.attackspeed + random(global.attackspeedr))))
if (global.weapon == Items.ToughGlove)
{
	hspeed *= 1.2
	punchtime = 0
	punches = 0
	maxpunchtime = 30
	maxpunches = 4
}
if (global.weapon == Items.BurntPan)
{
	hspeed *= 1.4
	punchtime = 0
	punches = 0
	maxpunchtime = 30
	maxpunches = 5
}
