if (image_index != 1)
{
    dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    image_index = 1
    snd_play(hurtsound)
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
