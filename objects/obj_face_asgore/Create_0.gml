event_inherited()
image_speed = 0.25
if instance_exists(obj_face_sans)
{
    with (obj_face_sans)
        instance_destroy()
}
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
u[0] = spr_asgore_face0
u[1] = spr_asgore_face1
u[2] = spr_asgore_face2
u[3] = spr_asgore_face3
u[4] = spr_asgore_face4
u[5] = spr_asgore_face5
if (global.faceemotion < 6)
    sprite_index = u[global.faceemotion]
