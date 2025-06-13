if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
	global.goldreward[3] += 60
	FL_SparedTsunderplane = 1
}
if (killed == 1)
{
	global.xpreward[3] += global.xpreward[myself]
	global.goldreward[3] += global.goldreward[myself]
	with (mypart1)
		event_user(0)
	global.kills += 1
	global.areapop[global.area] -= 1
	if (global.areapop[global.area] < 0)
		global.areapop[global.area] = 0
	FL_KilledLast = true
}
if (killed == 0)
{
	with (obj_vulkin)
		specialmessage = 1
	with (mypart1)
		instance_destroy()
	global.goldreward[3] += floor((global.goldreward[myself] * ((global.monstermaxhp[myself] - global.monsterhp[myself]) / global.monstermaxhp[myself])))
	global.monstersprite = sprite_index
	ddd = instance_create(x, y, obj_spared)
	ddd.image_speed = 0
	ddd.image_index = 1
	FL_SparedLast = true
}
global.monster[myself] = false
