if (active == false)
{
    if (side == 0)
    {
        move_towards_point((obj_heart.x + 15), obj_heart.y, 5.5)
        gravity = 0.12
        gravity_direction = 180
    }
    if (side == 1)
    {
        move_towards_point(obj_heart.x, (obj_heart.y + 15), 5.5)
        gravity = 0.12
        gravity_direction = 90
    }
    if (side == 2)
    {
        move_towards_point(obj_heart.x, (obj_heart.y - 15), 5.5)
        gravity = 0.12
        gravity_direction = 0
    }
    if (side == 3)
    {
        move_towards_point((obj_heart.x - 15), obj_heart.y, 5.5)
        gravity = 0.12
        gravity_direction = 0
    }
    sprite_index = spr_frogbullet_go
}
active = true
