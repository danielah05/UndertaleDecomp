if (con == 19)
{
    con = 20
    dmgwriter = instance_create(x, (y - 24), obj_dmgwriter)
    global.damage = 1
    with (dmgwriter)
        dmg = 1
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
