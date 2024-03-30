if (active == false)
{
    if (side == 0)
    {
        move_towards_point((obj_heart.x + 36), obj_heart.y, 6)
        gravity = 0.16
        gravity_direction = 180
    }
    if (side == 1)
    {
        move_towards_point((obj_heart.x + 15), (obj_heart.y + 36), 6)
        gravity = 0.16
        gravity_direction = 90
    }
    if (side == 2)
    {
        move_towards_point((obj_heart.x - 26), (obj_heart.y + 10), 6)
        gravity = 0.16
        gravity_direction = 0
    }
    if (side == 3)
    {
        move_towards_point(obj_heart.x, (obj_heart.y - 26), 6)
        gravity = 0.16
        gravity_direction = 270
    }
    sprite_index = spr_frogbullet_go
}
active = true
