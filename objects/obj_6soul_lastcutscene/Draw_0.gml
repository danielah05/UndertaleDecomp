counter += sinerspeed
siner += 1
radius += (sin((siner / 6)) * 2)
if (con == 1)
    sinerspeed += 0.25
for (i = 0; i < 6; i += 1)
    draw_sprite(sprite_index, i, (x + lengthdir_x(radius, (counter + ((i / 6) * 360)))), (y + lengthdir_y(radius, (counter + ((i / 6) * 360)))))
