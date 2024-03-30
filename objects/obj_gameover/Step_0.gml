if (unpersist == 1)
{
    if global.screen_border_activate_on_game_over
    {
        global.screen_border_activate_on_game_over = 0
        global.screen_border_active = true
    }
    room_goto(global.currentroom)
}
if (room == global.currentroom)
{
    room_persistent = false
    scr_tempload()
    instance_destroy()
}
