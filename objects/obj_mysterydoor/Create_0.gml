image_index = 0
image_speed = 0
ossafe_ini_open("undertale.ini")
on = ini_read_real("reset", "s_key", 0)
ossafe_ini_close()
if (on == 0)
{
    instance_create(x, (y + 40), obj_solidsmall)
    instance_create((x + 20), (y + 40), obj_solidsmall)
    instance_create(x, (y + 40), obj_readable_room2)
    instance_create((x + 20), (y + 40), obj_readable_room2)
}
else
{
    image_index = 1
    instance_create((x + 10), (y + 37), obj_doorAmusicfade)
}
