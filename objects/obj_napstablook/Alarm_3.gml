if (shudder == 16)
{
    dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y - 20), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
}
shudder -= 2
if (shudder == 0)
{
    global.hurtanim[myself] = 2
    return;
}
alarm[3] = 2
