var ch = "n"
var spacing = 14
var xstart_top = 431
var ystart_top = 82
var limit_top = 13
var xstart_right = (room_width - 6)
var ystart_right = 116
var limit_right = 20
var xstart_bottom = (room_width - 40)
var ystart_bottom = (room_height - 20)
var limit_bottom = 32
var xstart_left = 0
var ystart_left = 0
if (global.language == "ja")
{
    ch = "ン"
    spacing = 28
    xstart_top = 317
    ystart_top = 97
    limit_top = floor((((room_width - 6) - xstart_top) / spacing))
    xstart_right = (room_width - 6)
    ystart_right = (ystart_top + 30)
    limit_right = floor((((room_height - 16) - ystart_right) / spacing))
    xstart_bottom = (room_width - 34)
    ystart_bottom = (room_height - 16)
    limit_bottom = floor(((6 - xstart_bottom) / (-spacing)))
    xstart_left = 6
    ystart_left = (room_height - 46)
}
var count = obj_questionasker.mettamt
var count_top = count
if (count > limit_top)
    count_top = limit_top
count -= count_top
var count_right = count
if (count > limit_right)
    count_right = limit_right
count -= count_right
var count_bottom = count
if (count > limit_bottom)
    count_bottom = limit_bottom
count -= count_bottom
var count_left = count
scr_setfont(fnt_main)
draw_set_color(c_white)
var xx = xstart_top
var yy = ystart_top
for (var i = 0; i < count_top; i++)
{
    draw_text((xx + round(random(1))), (yy + round(random(1))), string_hash_to_newline(ch))
    xx += spacing
}
if (global.language != "ja")
    spacing += 2
xx = xstart_right
yy = ystart_right
for (i = 0; i < count_right; i++)
{
    draw_text_transformed((xx + round(random(1))), (yy + round(random(1))), string_hash_to_newline(ch), 1, 1, 270)
    yy += spacing
}
xx = xstart_bottom
yy = ystart_bottom
for (i = 0; i < count_bottom; i++)
{
    draw_text_transformed((xx + round(random(1))), (yy + round(random(1))), string_hash_to_newline(ch), 1, 1, 180)
    xx -= spacing
}
xx = xstart_left
yy = ystart_left
for (i = 0; i < count_left; i++)
{
    draw_text_transformed((xx + round(random(1))), (yy + round(random(1))), string_hash_to_newline(ch), 1, 1, 90)
    yy -= spacing
}
