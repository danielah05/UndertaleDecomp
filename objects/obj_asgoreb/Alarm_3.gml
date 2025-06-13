if ((global.monsterhp[myself] - takedamage) <= 500)
{
	dmgwriter = instance_create(x, (y + 150), obj_dmgwriter)
	global.fivedamage = (global.monsterhp[myself] - 30)
	if (global.fivedamage <= 0)
		global.fivedamage = 1
	with (dmgwriter)
		dmg = global.fivedamage
	instance_create(128, 46, obj_asgore_lastcutscene)
	caster_free(all)
	obj_purplegradienter.fade = 1
	with (obj_orangeparticlegen)
		instance_destroy()
	snd_play(snd_damage)
	with (mypart1)
		instance_destroy()
	with (obj_asgorespear)
		instance_destroy()
	instance_destroy()
}
else
{
	if (mypart1.pause != 1)
	{
		dmgwriter = instance_create(x, (y + 150), obj_dmgwriter)
		global.damage = takedamage
		with (dmgwriter)
			dmg = global.damage
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
}
