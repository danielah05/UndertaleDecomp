if (image_index != 1 && image_index != 2)
{
    with (mypart1)
        instance_destroy()
    dmgwriter = instance_create(x, (y + 80), obj_dmgwriter)
    dmgwriter.negative = 1
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    if ((global.monsterhp[myself] - takedamage) < 1 && died == 0)
        tempdie = 1
    if (tempdie == 1)
    {
        shudder = 16
        caster_free(global.batmusic)
    }
    image_index = 1
    if (died == 1)
        image_index = 2
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
if (tempdie == 1)
    alarm[3] = 4
