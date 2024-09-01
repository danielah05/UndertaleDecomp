if (os_type == os_xboxone)
{
    global.locale = ((os_get_language() + "_") + string_upper(os_get_region()))
    if (!variable_global_exists("text_data_en"))
        script_execute(textdata_en)
    if (!variable_global_exists("text_data_ja"))
        script_execute(textdata_ja)
    global.language = substr(global.locale, 1, 2)
    if (global.language != "ja")
        global.language = "en"
    xbox_account_picker_display = 0
    global.xboxlogin = -1
    global.xbox_disconnect_counter = 0
    global.xbox_coins_donated = 0
    global.xbox_pad_index = -1
}
else
    room_goto(room_start)
