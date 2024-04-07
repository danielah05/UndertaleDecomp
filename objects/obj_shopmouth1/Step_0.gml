d = 0
if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt == 0)
    {
        d = 1
        image_speed = 0.2
    }
}
if (d == 0)
{
    image_speed = 0
    image_index = 0
}
