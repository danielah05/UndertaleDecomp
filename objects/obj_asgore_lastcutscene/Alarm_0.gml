if (murder == 1 && md == 0)
{
    global.monsterinstance[0] = id
    global.mytarget = 0
    global.monsterhp[0] = 900
    global.monstermaxhp[0] = 900
    hearts = 0
    global.damage = 9999999999
    d = instance_create(x, y, obj_dmgwriter)
    d.takedamage = global.damage
    md = 1
}
asgorex = (xstart + shudder)
shudder = (-shudder)
if (shudder > 0)
    shudder -= 3
alarm[0] = 8
if (abs(shudder) < 1)
{
    shudder = 0
    con = 2
    alarm[0] = -1
}
