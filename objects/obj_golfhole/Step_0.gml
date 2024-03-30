if instance_exists(obj_rollsnow)
{
    if (distance_to_object(obj_rollsnow) < 8)
    {
        if (obj_rollsnow.bbox_bottom < bbox_top)
            obj_rollsnow.y += 0.2
        if (obj_rollsnow.bbox_top > bbox_bottom)
            obj_rollsnow.y -= 0.2
    }
    if (distance_to_object(obj_rollsnow) < 8)
    {
        if (obj_rollsnow.x < (x + (sprite_width / 2)))
            obj_rollsnow.x += 0.2
        if (obj_rollsnow.x > (x + (sprite_width / 2)))
            obj_rollsnow.x -= 0.2
    }
}
