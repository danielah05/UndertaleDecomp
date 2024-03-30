event_inherited()
image_speed = 0.25
if instance_exists(obj_face_sans)
{
    with (obj_face_sans)
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
u[0] = spr_face_undyne0
u[1] = spr_face_undyne1
u[2] = spr_face_undyne2
u[3] = spr_face_undyne3
u[4] = spr_face_undyne4
u[5] = spr_face_undyne5
u[6] = spr_face_undyne6
u[7] = spr_face_undyne7
u[8] = spr_face_undyne8
u[9] = spr_face_undyne9
sprite_index = u[global.faceemotion]
