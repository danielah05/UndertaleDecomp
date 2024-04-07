if (global.debug == true)
{
    if control_check_pressed(MenuButton)
        rating -= 1
}
if (global.turntimer < 1)
    instance_destroy()
