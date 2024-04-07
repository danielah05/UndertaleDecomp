draw_set_color(c_black)
if (dmg < 20 || dmg == 11 || dmg == 21 || dmg == 31 || dmg == 41 || dmg == 51 || dmg == 61 || dmg == 71 || dmg == 81 || dmg == 91)
    ossafe_fill_rectangle(x, (y - 24), (x + 48), y)
else
    ossafe_fill_rectangle(x, (y - 24), (x + 64), y)
scr_setfont(fnt_dmg)
if (i == 0 || i == 1)
    draw_set_color(c_red)
if (dmg > 0)
{
    draw_text(x, (y - 24), string_hash_to_newline(dmg))
    draw_set_color(c_dkgray)
    ossafe_fill_rectangle(x, (ystart + 8), (x + (global.monstermaxhp[global.mytarget] * stretchfactor)), (ystart + 20))
    draw_set_color(c_lime)
    ossafe_fill_rectangle(x, (ystart + 8), (x + (apparenthp * stretchfactor)), (ystart + 20))
}
else
{
    draw_set_color(c_white)
    draw_text(x, (y - 24), string_hash_to_newline("MISS"))
}
if (y > ystart)
{
    y = ystart
    vspeed = 0
    gravity = 0
}
