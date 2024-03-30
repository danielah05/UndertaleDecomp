xx = lengthdir_x(95, (image_angle - 90))
yy = lengthdir_y(95, (image_angle - 90))
if (type == 0)
{
    bolt = instance_create((x + xx), (y + yy), obj_gunarm_bolt)
    bolt.direction = (image_angle - 90)
    bolt.thisd = (image_angle - 90)
    bolt.image_angle = bolt.direction
    bolt.speed = 20
    bolt.image_xscale = 2
    bolt.image_yscale = 2
}
if (type == 1)
{
    i = 0
    repeat (3)
    {
        bolt = instance_create((x + xx), (y + yy), obj_gunarm_bolt)
        bolt.direction = (image_angle - 90)
        bolt.image_angle = bolt.direction
        bolt.thisd = ((image_angle - 110) + (20 * i))
        bolt.image_angle = bolt.direction
        bolt.speed = 20
        bolt.image_xscale = 2
        bolt.image_yscale = 2
        i += 1
    }
}
if (type == 2)
{
    i = 0
    repeat (4)
    {
        bolt = instance_create((x + xx), (y + yy), obj_gunarm_bolt)
        bolt.direction = (image_angle - 90)
        bolt.image_angle = bolt.direction
        bolt.thisd = ((image_angle - 120) + (20 * i))
        bolt.image_angle = bolt.direction
        bolt.speed = 20
        bolt.image_xscale = 2
        bolt.image_yscale = 2
        i += 1
    }
}
