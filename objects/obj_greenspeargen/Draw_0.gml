// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    if control_check_pressed(MenuButton)
        rating -= 1
}
if (global.turntimer < 1)
    instance_destroy()
