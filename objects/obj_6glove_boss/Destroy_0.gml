for (i = 0; i < maxnum; i += 1)
{
    if instance_exists(glove[i])
    {
        with (glove[i])
            instance_destroy()
    }
}
