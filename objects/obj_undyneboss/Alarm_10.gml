if (obj_heart.sprite_index == spr_heart)
{
    obj_heart.sprite_index = spr_heartgreen
    obj_heart.movement = 3
    green = 0
    if (order == 9 || order == 15 || order == 24)
        alarm[11] = 15
}
else
{
    green = 0
    obj_heart.sprite_index = spr_heart
    obj_heart.movement = 1
}
if (lesson == 7 || lesson == 12 || lesson == 21)
{
    global.turntimer = 60
    xbullet = instance_create(-10, obj_heart.y, blt_parent_noborder)
    xbullet.dmg = 6
    if (lesson == 7)
        xbullet.hspeed = 11
    if (lesson == 12)
        xbullet.hspeed = 13
    if (lesson == 21)
        xbullet.hspeed = 14
    xbullet.sprite_index = spr_undynespear_r
}
