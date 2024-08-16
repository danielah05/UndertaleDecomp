if (os_type == os_xboxone)
{
    if (ds_map_find_value(async_load, "id") == global.xbox_async_id)
    {
        xbox_account_picker_display = 0
        global.xboxlogin = ds_map_find_value(async_load, "user")
        global.xbox_async_id = -1
        global.xbox_pad_index = ds_map_find_value(async_load, "pad_index")
        if (global.xboxlogin != pointer_null)
        {
            xboxone_set_savedata_user(global.xboxlogin)
            xboxone_stats_add_user(global.xboxlogin)
            room_goto(room_start)
        }
        else
            global.xboxlogin = -1
    }
}
