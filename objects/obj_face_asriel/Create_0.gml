event_inherited()
image_speed = 0.25
if instance_exists(obj_face_papyrus)
{
    with (obj_face_papyrus)
        instance_destroy()
}
u[0] = spr_face_asriel0
u[1] = spr_face_asriel1
u[2] = spr_face_asriel2
u[3] = spr_face_asriel3
u[4] = spr_face_asriel4
u[5] = spr_face_asriel5
u[6] = spr_face_asriel6
u[7] = spr_face_asriel7
u[8] = spr_face_asriel8
u[9] = spr_face_asriel9
sprite_index = u[global.faceemotion]
