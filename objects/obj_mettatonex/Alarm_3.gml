if (mypart1.pause <= 0)
{
    dmgwriter = instance_create(x, (y + 100), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    shk = instance_create(0, 0, obj_objshake)
    shk.obj = mypart1
    snd_play(snd_damage)
    if (global.monsterhp[myself] > (global.monstermaxhp[myself] / 2) && turns <= 12)
    {
        mypart1.pause = 1
        alarm[8] = 11
    }
    else
        mypart1.pause = 2
    with (obj_ratingsmaster)
    {
        curtype = 4
        event_user(0)
    }
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
