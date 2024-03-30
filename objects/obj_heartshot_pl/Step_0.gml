if (y < 50)
{
    if instance_exists(obj_ratingsmaster)
        global.ratings -= 5
    instance_destroy()
}
