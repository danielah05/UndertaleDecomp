if (mypart1.pause != 1)
{
    dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    mypart1.pause = 1
    osh = instance_create(0, 0, obj_objshake)
    osh.obj = mypart1
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
