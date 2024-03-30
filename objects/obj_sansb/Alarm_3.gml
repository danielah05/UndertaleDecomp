if (mypart1.pause != 1)
{
    dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y - 50), obj_dmgwriter)
    global.damage = 0
    with (dmgwriter)
        dmg = 0
    mypart1.pause = 1
    hit_try += 1
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
