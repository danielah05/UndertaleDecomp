draw_sprite(spr_lighttower, 0, x, y)
draw_sprite(spr_towersymbol_off, (ts / 6), (x + 25), (y + 11))
if (on == 1)
{
    draw_sprite(spr_towersymbol_on, (ts / 6), (x + 25), (y + 11))
    ts += 1
}
