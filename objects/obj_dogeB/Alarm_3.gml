if (sprite_index != hurtsprite)
{
    dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), y, obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    sprite_index = hurtsprite
    snd_play(hurtsound)
    alarm[8] = 11
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
