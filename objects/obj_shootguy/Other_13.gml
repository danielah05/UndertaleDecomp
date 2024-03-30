for (j = (gridd - 30); j > gridu; j -= 20)
{
    for (i = (gridl + 10); i < gridr; i += 20)
    {
        if collision_point(i, j, obj_blackbox_o, 0, 1)
        {
            with (collision_point(i, j, obj_blackbox_o, 0, 1))
                event_user(3)
        }
    }
}
