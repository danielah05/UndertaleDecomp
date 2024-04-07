if (poffed == 0)
{
    image_index -= 1
    image_speed = 0
    obj_pofftrigger.t = 5
    obj_pofftrigger.alarm[4] = 60
    poffed = 1
}
if (sprite_index == spr_doglick)
{
    image_speed = 0
    sprite_index = spr_dogbuttwalk
    obj_pofftrigger.alarm[4] = 40
}
