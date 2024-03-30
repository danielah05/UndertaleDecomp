if (hurt == false)
{
    rotto = 0
    siner += 1
}
if (hurt == true)
{
    rotto += 1
    x = (parent.x + 8)
    siner = 28
}
nowy = (y + 120)
draw_sprite_ext(spr_pyropefootl, 0, (x + 38), (nowy - abs(((-(sin((siner / 14)))) * 20))), 2, 2, abs(((-(sin((siner / 14)))) * 40)), c_white, 1)
draw_sprite_ext(spr_pyropefootr, 0, (x + 60), (nowy - abs(((-(sin((siner / 14)))) * 20))), 2, 2, (-(abs((sin((siner / 14)) * 40)))), c_white, 1)
nowy -= (20 + abs(((-(sin((siner / 14)))) * 20)))
for (i = 5; i > -1; i -= 1)
{
    draw_sprite_ext(spr_pyropebody, i, x, nowy, 2, 2, 0, c_white, 1)
    nowy -= 12
    nowy -= abs((sin(((siner - i) / 14)) * 6))
}
if (hurt == false)
    draw_sprite_ext(spr_pyropehead, (siner / 10), (x + 50), (nowy - 30), 2, 2, ((sin((siner / 6)) * 4) + (sin(rotto) * 12)), c_white, 1)
if (hurt == true)
    draw_sprite_ext(spr_pyropehead2, (siner / 10), (x + 50), (nowy - 30), 2, 2, (sin(rotto) * 12), c_white, 1)
