if (sum == 1)
{
    aimbullet = instance_create((x + 14), (y + 14), obj_sunbullet)
    with (aimbullet)
        direction = point_direction(x, y, obj_heart.x, obj_heart.y)
    alarm[3] = 30
}
