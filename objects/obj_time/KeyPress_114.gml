if (global.debug == true)
{
    gx = ossafe_file_text_open_write("system_information_962")
    ossafe_file_text_write_string(gx, "a")
    ossafe_file_text_close(gx)
    if (global.steam_int == true)
    {
        if (!steam_file_exists("system_information_962"))
            steam_file_write_file("system_information_962", "system_information_962")
    }
}
