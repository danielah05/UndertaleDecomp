if (mypart1.hurt != true)
{
	dmgwriter = instance_create(x, ((y + ht) - 60), obj_dmgwriter)
	global.damage = takedamage
	with (dmgwriter)
		dmg = global.damage
	mypart1.hurt = true
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
