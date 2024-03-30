draw_set_color(c_red)
scr_setfont(fnt_maintext)
if instance_exists(obj_mainchara)
{
    draw_text(20, 60, string_hash_to_newline(obj_mainchara.x))
    draw_text(20, 80, string_hash_to_newline(obj_mainchara.y))
}
