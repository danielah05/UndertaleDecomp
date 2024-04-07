event_inherited()
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
image_speed = 0.25
u[0] = spr_alphysface_0
u[1] = spr_alphysface_1
u[2] = spr_alphysface_2
u[3] = spr_alphysface_3
u[4] = spr_alphysface_4
u[5] = spr_alphysface_5
u[6] = spr_alphysface_6
u[7] = spr_alphysface_7
u[8] = spr_alphysface_8
u[9] = spr_alphysface_9
u[10] = spr_alphysface_10
u[11] = spr_alphysface_11
u[12] = spr_alphysface_12
u[13] = spr_alphysface_13
u[14] = spr_alphysface_14
u[15] = spr_alphysface_15
u[16] = spr_alphysface_16
u[17] = spr_alphysface_17
u[18] = spr_alphysface_18
u[19] = spr_alphysface_19
u[20] = spr_alphysface_20
u[21] = spr_alphysface_21
u[22] = spr_alphysface_22
u[23] = spr_alphysface_23
u[24] = spr_alphysface_24
u[25] = spr_alphysface_25
sprite_index = u[global.faceemotion]
if (FL_AlphysExpression == 1)
    sprite_index = u[(global.faceemotion + 10)]
if (FL_AlphysExpression == 2)
    sprite_index = u[(global.faceemotion + 15)]
if (FL_AlphysExpression == 4)
{
    image_index = global.faceemotion
    sprite_index = spr_alphysface_new
}
