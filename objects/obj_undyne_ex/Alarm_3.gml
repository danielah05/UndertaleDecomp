if (mypart1.pause != 1)
{
	dmgwriter = instance_create(x, (y + 150), obj_dmgwriter)
	global.damage = takedamage
	global.damage *= 21
	takedamage *= 21
	if (takedamage < 600)
	{
		takedamage = (600 + floor(random(67)))
		global.damage = takedamage
	}
	with (dmgwriter)
		dmg = global.damage
	shk = instance_create(0, 0, obj_objshake)
	shk.obj = mypart1
	if ((global.monsterhp[myself] - takedamage) <= 0)
	{
		caster_free(all)
		global.faceemotion = 0
		mypart1.facetype = 2
		shk.shaketime = 5
	}
	mypart1.pause = 1
	snd_play(snd_damage)
	alarm[8] = 11
}
if (sha == 0)
	sha = x
x = (sha + shudder)
if (shudder < 0)
	shudder = (-((shudder + 1)))
else
	shudder = (-shudder)
if (shudder == 0)
{
	sha = 0
	global.hurtanim[myself] = 2
	return;
}
alarm[3] = 2
