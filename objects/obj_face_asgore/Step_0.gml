if (global.faceemotion < 6)
    sprite_index = u[global.faceemotion]
if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt != 0)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
}
