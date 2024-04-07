scr_depth(0, 0, 0, 0, 0)
if (FL_TruePacifist == false)
{
    if instance_exists(obj_face_torieltalk)
        image_index = obj_face_torieltalk.image_index
    else
        image_index = 0
}
if (FL_TruePacifist == true)
{
    if instance_exists(obj_face_asriel)
        image_index = obj_face_asriel.image_index
    else
        image_index = 0
}
scr_npcdir(2)
