hit = 1
if (blue == BulletType.Blue)
{
	if (scr_blueat() == false)
		hit = 0
}
if (global.invc < 1 && hit == 1)
{
	dmgamt = round((dmg - ((global.df + global.adef) / 5)))
	dmgamt -= 1
	if (dmgamt < 1)
		dmgamt = 1
	global.hp -= dmgamt
	snd_play(snd_hurt1)
	global.hshake = 2
	global.shakespeed = 2
	global.vshake = 2
	instance_create(0, 0, obj_shaker)
	instance_destroy()
	global.invc = global.inv
}
