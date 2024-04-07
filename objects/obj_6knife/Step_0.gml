if (type == 0 || type == 2)
{
    if instance_exists(obj_6knife_act)
    {
        x = (relx + obj_6knife_act.x)
        y = (rely + obj_6knife_act.y)
        image_angle = (obj_6knife_act.image_angle + inita)
    }
    if (y > (room_height + 60))
    {
        y -= (sprite_width * 6)
        rely -= (sprite_width * 6)
    }
    if (y < -60)
    {
        y += (sprite_width * 6)
        rely += (sprite_width * 6)
    }
    if (x > (room_width + 60))
    {
        x -= (sprite_width * 7)
        relx -= (sprite_width * 7)
    }
    if (x < -60)
    {
        x += (sprite_width * 7)
        relx += (sprite_width * 7)
    }
    if (type == 2)
    {
        shake += 0.2
        x += (random(shake) - random(shake))
        y += (random(shake) - random(shake))
    }
}
if (type == 1)
{
    dd = distance_to_object(obj_vsflowey_heart)
    move_towards_point((obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8), 1)
    if (dd < 240)
        speed = 2
    if (dd < 180)
        speed = 3
    if (dd < 120)
        speed = 4
    if (dd < 60)
        speed = 5
    if (dd < 30)
        speed = 6
    image_angle += speed
}
