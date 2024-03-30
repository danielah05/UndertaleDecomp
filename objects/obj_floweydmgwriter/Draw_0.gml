thisnum = dmg
if (thisnum >= 0)
{
    place = 0
    numadd = 10
    if (thisnum >= numadd)
    {
        while (thisnum >= numadd)
        {
            place += 1
            numadd *= 10
        }
    }
}
else
{
    thisnum = 0
    place = 0
}
thisnum2 = thisnum
for (i = place; i >= 0; i -= 1)
{
    numnum[i] = floor((thisnum2 / power(10, i)))
    thisnum2 -= (numnum[i] * power(10, i))
}
draw_set_color(c_black)
ossafe_fill_rectangle((x - 1), (ystart + 7), ((x + (global.floweymaxhp * stretchfactor)) + 1), (ystart + 28))
draw_set_color(c_dkgray)
ossafe_fill_rectangle(x, (ystart + 8), (x + (global.floweymaxhp * stretchfactor)), (ystart + 28))
draw_set_color(c_lime)
if (apparenthp > 0)
    ossafe_fill_rectangle(x, (ystart + 8), (x + (apparenthp * stretchfactor)), (ystart + 28))
for (i = place; i >= 0; i -= 1)
{
    draw_set_color(c_red)
    draw_sprite_ext(spr_dmgnum_o, numnum[i], ((((x - 20) + (stretchwidth / 2)) - (i * 32)) + (place * 16)), (y - 28), 1, 1, 0, c_red, 1)
}
if (y > ystart)
{
    y = ystart
    vspeed = 0
    gravity = 0
}
