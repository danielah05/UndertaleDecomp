if (ds_map_find_value(async_load, "id") == getstring_event_id)
{
    var str = ""
    if ds_map_find_value(async_load, "status")
    {
        var input_str = ds_map_find_value(async_load, "result")
        var input_len = strlen(input_str)
        for (var i = 1; i <= input_len; i++)
        {
            var ch = ord(string_char_at(input_str, i))
            var ok = 0
            if (ch >= 32 && ch <= 126)
                ok = 1
            else if (ch == 8216)
            {
                ch = 96
                ok = 1
            }
            else if (ch == 8217)
            {
                ch = 39
                ok = 1
            }
            else if (ch == 8220 || ch == 8221)
            {
                ch = 34
                ok = 1
            }
            else if (ch >= 12288 && ch <= 12290)
                ok = 1
            else if (ch >= 12300 && ch <= 12305)
                ok = 1
            else if (ch == 12316)
            {
                ch = 65374
                ok = 1
            }
            else if (ch >= 12353 && ch <= 12435)
                ok = 1
            else if (ch >= 12449 && ch <= 12531)
                ok = 1
            else if (ch == 12539 || ch == 12540)
                ok = 1
            else if (ch >= 65281 && ch < 65374)
            {
                ch += -65248
                ok = 1
            }
            else if (ch == 65374)
                ok = 1
            else if (ch >= 65377 && ch <= 65439)
                ok = 1
            if ok
                str += chr(ch)
        }
    }
    mystring = (" " + str)
    alarm[0] = 30
    global.disable_os_pause = 0
}
