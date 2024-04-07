x = xstart
if (sprite_index != spr_torielboss_hurt && sprite_index != spr_torielboss_reallyhurt && sprite_index != spr_torielboss_murdered)
{
    if (shudder == 16 || shudder == 32)
    {
        dmgwriter = instance_create(x, (y - 20), obj_dmgwriter)
        global.damage = takedamage
        with (dmgwriter)
            dmg = global.damage
        if (conversation < 4)
            conversation = 0
    }
    sprite_index = spr_torielboss_hurt
    if (global.damage > 100)
    {
        sprite_index = spr_torielboss_reallyhurt
        caster_set_volume(global.batmusic, 0)
    }
    if (global.damage > 100 && conversation > 13)
        sprite_index = spr_torielboss_murdered
    if (FL_RuinsKillsCounter >= 20)
        sprite_index = spr_torielboss_murdered
    snd_play(hurtsound)
}
x += shudder
if (shudder < 0)
    shudder = (-((shudder + 2)))
else
    shudder = (-shudder)
shudder -= 2
if (shudder == 0)
{
    global.hurtanim[myself] = 2
    return;
}
alarm[3] = 2
if (global.damage > 100)
    alarm[3] = 3
