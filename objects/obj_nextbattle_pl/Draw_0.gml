draw_set_color(c_white)
draw_text_transformed(300, 100, string_hash_to_newline("waiting for the#next battle..."), 2, 2, random(3))
if (global.attacktype != 50)
    draw_text_transformed(300, 200, string_hash_to_newline(("attack Number" + string((global.attacktype + 1)))), 2, 2, random(6))
else
    draw_text_transformed(300, 200, string_hash_to_newline(("final attack" + string((global.attacktype + 1)))), 2, 2, random(6))
draw_text(100, 200, string_hash_to_newline((string(global.healno) + " heal items left")))
draw_text(100, 220, string_hash_to_newline("press H to use one"))
draw_text(100, 300, string_hash_to_newline((("your HP is " + string(global.testhp)) + "/20")))
draw_text(100, 400, string_hash_to_newline("press SPACE to continue"))
if (global.attacktype == 38 || global.attacktype == 39)
{
    draw_set_color(c_blue)
    draw_text(300, 300, string_hash_to_newline("blue lasers don't hit#you if you don't#move"))
}
