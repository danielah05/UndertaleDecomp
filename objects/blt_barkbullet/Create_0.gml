dmg = 7
xx = ((obj_heart.x - obj_heart.xprevious) * 30)
yy = ((obj_heart.y - obj_heart.yprevious) * 30)
move_towards_point(((obj_heart.x + xx) - 8), (obj_heart.y + yy), 7)
sprite_index = scr_getsprite(sprite_index)
