if (phone != 2)
{
    if instance_exists(obj_torface)
    {
        myinteract = 1
        if instance_exists(obj_face_torieltalk)
            image_index = obj_face_torieltalk.image_index
        else
            image_index = 0
    }
    else
    {
        myinteract = 0
        if (path_position == 1)
        {
            image_index = 0
            image_speed = 0
        }
        else if (path_speed != 0)
            image_speed = 0.2
        if (speed > 0)
            image_speed = 0.2
    }
    scr_npcdir(0)
    if (phone == 1)
        sprite_index = spr_toriel_d_phone
}
if (sprite_index == spr_toriel_hug && image_index >= 2)
{
    image_speed = 0
    sprite_index = spr_toriel_hug2
    dsprite = spr_toriel_hug2
}
