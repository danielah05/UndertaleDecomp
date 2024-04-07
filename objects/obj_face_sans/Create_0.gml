event_inherited()
image_speed = 0.25
if instance_exists(obj_face_undyne)
{
    with (obj_face_undyne)
        instance_destroy()
}
if instance_exists(obj_face_papyrus)
{
    with (obj_face_papyrus)
        instance_destroy()
}
if instance_exists(obj_face_alphys)
{
    with (obj_face_alphys)
        instance_destroy()
}
if instance_exists(obj_face_asgore)
{
    with (obj_face_asgore)
        instance_destroy()
}
if instance_exists(obj_face_torieltalk)
{
    with (obj_face_torieltalk)
        instance_destroy()
}
if instance_exists(obj_face_torielblink)
{
    with (obj_face_torielblink)
        instance_destroy()
}
if instance_exists(obj_torbody)
{
    with (obj_torbody)
        instance_destroy()
}
if instance_exists(obj_face_mettaton)
{
    with (obj_face_mettaton)
        instance_destroy()
}
if (global.faceemotion == 0 && sprite_index != spr_face_sans)
    sprite_index = spr_face_sans
if (global.faceemotion == 1 && sprite_index != spr_face_sanschuckle)
    sprite_index = spr_face_sanschuckle
if (global.faceemotion == 2 && sprite_index != spr_face_sanswink)
    sprite_index = spr_face_sanswink
if (global.faceemotion == 3 && sprite_index != spr_face_sansblink)
    sprite_index = spr_face_sansblink
if (global.faceemotion == 4 && sprite_index != spr_face_sansnoeyes)
    sprite_index = spr_face_sansnoeyes
