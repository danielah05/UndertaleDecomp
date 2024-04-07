dmg = 0
if instance_exists(obj_asgoreb)
    dmg = obj_asgoreb.curatk
set = 0
if (global.hp > 1)
    set = 1
if (set == 1)
{
    scr_damagestandard_x()
    if (global.hp <= 0)
        global.hp = 1
}
if (set == 0)
{
    scr_damagestandard_x()
    if (global.hp <= 0)
        global.hp = 0
}
