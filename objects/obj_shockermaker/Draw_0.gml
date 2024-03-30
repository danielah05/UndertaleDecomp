dirface = point_direction(x, y, (obj_heart.x + 5), (obj_heart.y + 5))
diramt = point_distance(x, y, (obj_heart.x + 5), (obj_heart.y + 5))
imax = 20
for (i = 0; i < imax; i += 1)
    draw_sprite_ext(spr_shockpart, random(10), ((x + (lengthdir_x(diramt, dirface) * (i / imax))) + random(12)), ((y + (lengthdir_y(diramt, dirface) * (i / imax))) + random(12)), 1, 1, dirface, c_white, 1)
draw_sprite(spr_shockfinal, random(5), (obj_heart.x - 5), (obj_heart.y - 5))
obj_heart.x += (random(2) - 1)
obj_heart.y += (random(2) - 1)
