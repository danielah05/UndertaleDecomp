repeat no
{
    draw_set_color(c_white)
    ossafe_fill_rectangle((targetx + random(w)), (targety + random(h)), (targetx + random(w)), (targety + random(h)))
    draw_set_color(c_black)
    ossafe_fill_rectangle((targetx + random(w)), (targety + random(h)), (targetx + random(w)), (targety + random(h)))
}
