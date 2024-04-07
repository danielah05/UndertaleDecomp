with (glove[4])
    instance_destroy()
glove[4] = instance_create(x, y, obj_6glove_act)
gloveang[4] = (1440 / maxnum)
glove[4].ang = gloveang[4]
glove[4].x = (x + lengthdir_x(radius, (gloveang[4] + ourang)))
glove[4].y = (y + lengthdir_y(radius, (gloveang[4] + ourang)))
glove[4].image_angle = (gloveang[4] + ourang)
spec = 1
