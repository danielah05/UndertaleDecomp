for (i = (gridl + 30); i < gridr; i += 20)
{
    for (j = (gridu + 10); j < gridd; j += 20)
    {
        if collision_point(i, j, obj_blackbox_o, 0, 1)
        {
            with (collision_point(i, j, obj_blackbox_o, 0, 1))
                event_user(1)
        }
    }
}
