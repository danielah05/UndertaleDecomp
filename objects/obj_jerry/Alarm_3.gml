if (sprite_index != hurtgfx)
{
    dmgwriter = instance_create((x + 10), (y + 80), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = ceil((global.damage / 5))
    sprite_index = hurtgfx
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
