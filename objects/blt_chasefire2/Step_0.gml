if instance_exists(blt_handbullet1)
{
    if (blt_handbullet1.path_position == 1 && goof == 0)
    {
        move_towards_point((obj_heart.x + 2), (obj_heart.y + 2), 0.6)
        goof = 1
        friction = -0.1
    }
}
if (y > (global.idealborder[3] + 4))
    instance_destroy()
