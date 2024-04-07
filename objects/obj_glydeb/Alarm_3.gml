if (mypart1.pause != 1)
{
    dmgwriter = instance_create((x + 10), (y + ht), obj_dmgwriter)
    takedamage = ceil((takedamage / 3))
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    mypart1.pause = 1
    snd_play(snd_damage)
    alarm[8] = 11
    shker = instance_create(0, 0, obj_objshake)
    shker.obj = mypart1
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
