if (obj_heart.sprite_index == spr_heart)
{
    obj_heart.sprite_index = spr_heartgreen
    obj_heart.movement = 3
    green = 0
    if (order == 3 || order == 7 || order == 12)
        alarm[11] = 15
}
else
{
    green = 0
    obj_heart.sprite_index = spr_heart
    obj_heart.movement = 1
}
if (lesson == -7 || lesson == -11 || lesson == -14)
    global.turntimer = 10
