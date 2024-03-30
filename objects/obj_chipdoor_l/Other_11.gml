g = instance_position((x + 10), (y + 70), obj_solidexwide)
if instance_exists(g)
{
    with (g)
        instance_destroy()
}
