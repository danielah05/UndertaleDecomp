draw_set_color(c_white)
scr_setfont(fnt_maintext)
var roomname = scr_gettext("flowey_load_room")
var lvtext = scr_gettext("flowey_load_lv")
var timetext = scr_gettext("flowey_load_time")
var namesize = string_width(string_hash_to_newline(substr(name, 1, 6)))
var lvsize = string_width(string_hash_to_newline(lvtext))
var timesize = string_width(string_hash_to_newline(timetext))
var x_center = 160
var lvpos = round((((x_center + (namesize / 2)) - (timesize / 2)) - (lvsize / 2)))
var namepos = 70
var timepos = 250
if (global.language == "ja")
{
    namepos -= 6
    timepos += 6
}
draw_text(namepos, 62, string_hash_to_newline(name))
draw_text(lvpos, 62, string_hash_to_newline(lvtext))
draw_text((timepos - timesize), 62, string_hash_to_newline(timetext))
scr_drawtext_centered(x_center, 80, roomname)
var continue_pos = 85
var restart_pos = 175
if (global.language == "ja")
{
    continue_pos = namepos
    restart_pos = (timepos - string_width(string_hash_to_newline(scr_gettext("flowey_load_restart"))))
}
if (selected3 == 0)
    draw_set_color(c_yellow)
else
    draw_set_color(c_white)
draw_text(continue_pos, 110, string_hash_to_newline(scr_gettext("flowey_load_continue")))
if (selected3 == 1)
    draw_set_color(c_yellow)
else
    draw_set_color(c_white)
draw_text(restart_pos, 110, string_hash_to_newline(scr_gettext("flowey_load_restart")))
