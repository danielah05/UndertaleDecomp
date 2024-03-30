if (active == true)
{
    if (x < (global.idealborder[0] + 15))
    {
        active = false
        side = 1
        x = (global.idealborder[0] + 20)
        gravity = 0
        speed = 0
        sprite_index = spr_frogbullet_stop
        image_angle = -90
        alarm[0] = 8
        if (lazy == 1)
            alarm[0] = 20
    }
    if (y < (global.idealborder[2] + 15))
    {
        active = false
        side = 2
        y = (global.idealborder[2] + 20)
        gravity = 0
        speed = 0
        sprite_index = spr_frogbullet_stop
        image_angle = 180
        alarm[0] = 8
        if (lazy == 1)
            alarm[0] = 20
    }
    if (x > (global.idealborder[1] - 15))
    {
        active = false
        side = 3
        x = (global.idealborder[1] - 20)
        gravity = 0
        speed = 0
        sprite_index = spr_frogbullet_stop
        image_angle = 90
        alarm[0] = 8
        if (lazy == 1)
            alarm[0] = 20
    }
    if (y > (global.idealborder[3] - 15))
    {
        active = false
        side = 0
        y = (global.idealborder[3] - 20)
        gravity = 0
        speed = 0
        sprite_index = spr_frogbullet_stop
        image_angle = 0
        alarm[0] = 8
        if (lazy == 1)
            alarm[0] = 20
    }
}
