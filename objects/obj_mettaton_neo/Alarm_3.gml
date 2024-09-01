if (mypart1.pause != 1)
{
    caster_free(all)
    dmgwriter = instance_create(x, (y + 200), obj_dmgwriter)
    global.damage = takedamage
    global.damage = ((global.monsterhp[myself] + 4000) + floor(random(3289)))
    if (scr_murderlv() >= MurderLevel.Lv15HotlandCoreKills)
        global.damage = (900000 + floor(random(99999)))
    with (dmgwriter)
        dmg = global.damage
    shk = instance_create(0, 0, obj_objshake)
    shk.obj = mypart1
    with (mypart1)
    {
        siner = 0
        burston = 0
        global.faceemotion = 6
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
