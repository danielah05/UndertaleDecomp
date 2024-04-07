with (other.id)
{
    instance_create((x + 10), (y + 10), obj_blackbox_o_shatter)
    instance_destroy()
}
with (obj_shootguy)
    event_user(4)
instance_destroy()
