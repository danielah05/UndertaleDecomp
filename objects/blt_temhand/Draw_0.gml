adjustx = 0
adjusty = 0
if (direction == 0)
    adjustx = 4
if (direction == 180)
    adjustx = 4
if (direction == 270)
    adjusty = 4
if (direction == 90)
    adjusty = 4
draw_sprite(sprite_index, image_index, (x + adjustx), (y + adjusty))
temx2[temno] = (x + 10)
temy2[temno] = (y + 10)
xdif = (x - (obj_heart.x + 2))
ydif = (y - (obj_heart.y + 6))
if (abs(xdif) < 20 && alarm[0] > 5)
    alarm[0] -= 2
if (abs(ydif) < 20 && alarm[0] > 5)
    alarm[0] -= 2
if (abs(xdif) < 10 && alarm[0] > 4)
    alarm[0] = (alarm[0] / 2)
if (abs(ydif) < 10 && alarm[0] > 4)
    alarm[0] = (alarm[0] / 2)
for (i = 0; i < 10; i += 1)
{
    draw_set_color(c_white)
    if (temx1[i] > 0)
    {
        ossafe_fill_rectangle(temx1[i], temy1[i], temx2[i], temy2[i])
        if collision_rectangle(temx1[i], temy1[i], temx2[i], temy2[i], obj_heart, 0, 1)
            event_user(1)
    }
}
