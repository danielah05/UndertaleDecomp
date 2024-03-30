speed = 0
towarddir = point_direction((x + 30), (y + 30), (obj_heart.x + 10), (obj_heart.y + 10))
initdir = floor(random(30))
for (i = 0; i < 7; i += 1)
{
    blt = instance_create((x + 30), (y + 30), obj_vulkinlightning)
    if instance_exists(blt)
        blt.direction = (((towarddir - 110) + initdir) + (i * 30))
}
firetime += 1
if (firetime < 5)
    alarm[1] = rate
else
{
    direction = ((towarddir - 110) - random(50))
    speed = 2
}
