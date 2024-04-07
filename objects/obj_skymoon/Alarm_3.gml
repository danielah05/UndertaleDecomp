if (sum == 1)
{
    aimbullet = instance_create((200 - random(200)), (200 - random(200)), obj_meteorbullet)
    with (aimbullet)
        direction = point_direction(x, y, obj_heart.x, obj_heart.y)
    alarm[3] = 30
}
