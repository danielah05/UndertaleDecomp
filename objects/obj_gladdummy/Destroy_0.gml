if (killed == 1)
{
	FL_KilledGladDummy = 1
	global.vaporspeed = 0
	global.monstersprite = spr_dummybattle
	ddd = instance_create(x, y, obj_vaporized)
	ddd.image_xscale = image_xscale
	ddd.image_yscale = image_yscale
	ddd.image_speed = 0
	ddd.image_index = 1
	global.kills += 1
	global.monster[myself] = false
}
else
	FL_SparedSpecific = 1
