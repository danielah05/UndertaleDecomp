if (image_index != 1)
{
    with (mypart1)
        instance_destroy()
    with (mypart2)
        instance_destroy()
    dmgwriter = instance_create((x + 20), (y - 10), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    image_index = 1
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
