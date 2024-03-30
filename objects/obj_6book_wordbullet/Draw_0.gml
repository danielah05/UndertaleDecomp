counter += 1
scr_setfont(fnt_maintext)
width = string_width(string_hash_to_newline(word))
factor = (100 / width)
draw_set_color(image_blend)
draw_text_transformed(x, y, string_hash_to_newline(word), factor, 4.2, 0)
if (hspeed > 0 && x > 405)
    instance_destroy()
if (hspeed < 0 && x < 120)
    instance_destroy()
if (type == 2)
{
    shake += 0.2
    x += (random(shake) - random(shake))
    y += (random(shake) - random(shake))
}
