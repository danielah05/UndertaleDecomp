timer += 1
if (timer == 15)
    alarm[0] = 5
if (timer < 15)
{
    ss += (random(1) - random(0.8))
    rr += (random(0.8) - random(1))
    ssin = (sin((ss / 3)) * 5)
    rsin = (sin((rr / 3)) * 5)
}
else
{
    ssini = lengthdir_x(5, point_direction(x, y, (obj_heart.x + 8), (obj_heart.y + 8)))
    rsini = lengthdir_y(5, point_direction(x, y, (obj_heart.x + 8), (obj_heart.y + 8)))
    if (rsin < (rsini - 1))
        rsin += 1
    if (rsin > (rsini + 1))
        rsin -= 1
    if (ssin < (ssini - 1))
        ssin += 1
    if (ssin > (ssini + 1))
        ssin -= 1
}
siner += 1
sz = (sin((siner / 4)) * 0.2)
draw_sprite_ext(sprite_index, image_index, ((x - (ssin / 2)) + sin((siner / 6))), (y - (rsin / 2)), 2, 2, 0, c_white, 1)
draw_sprite_ext(sprite_index, image_index, (x + ssin), (y + rsin), (0.8 + sz), (0.8 + sz), 0, c_white, 1)
