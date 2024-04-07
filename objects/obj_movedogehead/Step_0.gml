if (excited == 1 && alarm[0] > 1)
{
    image_speed = 0.1
    sprite_index = spr_movedogeheadb
    if instance_exists(obj_movedoge)
    {
        if (obj_movedoge.mercymod == 200 || (obj_movedoge.mercymod == 201 && specialx == 0))
        {
            alarm[3] = 4
            specialx = 1
        }
        if (obj_movedoge.mercymod > 998 && specialx == 0)
        {
            alarm[2] = 4
            specialx = 1
        }
    }
}
else
{
    image_speed = 0.33335
    sprite_index = spr_movedogeheada
}
if (excited == 3)
    excited = 1
