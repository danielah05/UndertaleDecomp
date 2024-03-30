if (image_index != 1)
{
    prevhp = global.monsterhp[myself]
    with (mypart1)
        instance_destroy()
    dogignore = 0
    dmgwriter = instance_create(x, (y + 150), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    image_index = 1
    snd_play(snd_damage)
}
x += shudder
if (shudder < 0)
    shudder = (-((shudder + 2)))
else
    shudder = (-shudder)
if (shudder == 0)
{
    global.hurtanim[myself] = 2
    return;
}
alarm[3] = 2
