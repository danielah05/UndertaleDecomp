stretchwidth = global.monsterinstance[global.mytarget].wd
stretchfactor = (stretchwidth / global.monstermaxhp[global.mytarget])
apparenthp = global.monsterhp[global.mytarget]
actualhp = global.monsterhp[global.mytarget]
maxhp = global.monstermaxhp[global.mytarget]
negative = 0
special = false
dmg = global.damage
alarm[0] = 1
i = 1
if (dmg != 0)
{
	vspeed = -4
	gravity = 0.5
	gravity_direction = 270
}
drawbar = 1
