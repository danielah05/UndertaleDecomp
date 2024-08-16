buffer_wait -= 1
if (control_check_pressed(0) || control_check_pressed(1))
{
    if (buffer_wait < 0)
    {
        global.interact = 0
        global.facing = 0
        instance_destroy()
    }
}
