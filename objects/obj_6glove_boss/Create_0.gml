maxnum = 7
angspeed = 3
ourang = 0
radius = 90
radiusspeed = 0
siner = 0
slower = 0
spec = 0
for (i = 0; i < maxnum; i += 1)
{
    glove[i] = instance_create(x, y, obj_6glove_part)
    gloveang[i] = ((i * 360) / maxnum)
    glove[i].ang = gloveang[i]
    glove[i].x = (x + lengthdir_x(radius, (gloveang[i] + ourang)))
    glove[i].y = (y + lengthdir_y(radius, (gloveang[i] + ourang)))
    glove[i].image_angle = (gloveang[i] + ourang)
}
vspeed = 2.5
