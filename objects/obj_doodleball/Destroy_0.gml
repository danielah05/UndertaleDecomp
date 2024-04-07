if (active == true)
{
    for (i = 0; i < num; i += 1)
    {
        if instance_exists(child[i])
        {
            with (child[i])
                instance_destroy()
        }
    }
}
