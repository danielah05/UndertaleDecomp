radius = 30
ang = 0
for (i = 0; i < 20; i += 1)
{
    ang = (i * 18)
    xx = lengthdir_x(radius, ang)
    yy = lengthdir_y(radius, ang)
    fp = instance_create((xx + x), (yy + y), obj_friendprotector)
    fp.direction = ang
    fp.speed = 0.01
    fp.go = 1
}
spec = 2
