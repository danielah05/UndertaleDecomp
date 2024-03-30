if (scr_monstersum() > 1)
{
    gen = instance_create((x - 20), (y + 10), obj_loopbulletgrowgen)
    gen.dmg = global.monsteratk[myself]
    gen.blue = 1
    add = (floor(random(8)) / 10)
    gen.xadd = (2.2 + add)
    gen.speed = (1.2 + (add * 1))
    gen.specialtimer = 999
    sprite_index = spr_tinypombark
    alarm[2] = 15
    alarm[0] = 75
}
if (scr_monstersum() == 1)
{
    sprite_index = spr_tinypomsadbark
    alarm[2] = 30
    instance_create((x - 20), (y + 25), blt_sadbullet)
}
