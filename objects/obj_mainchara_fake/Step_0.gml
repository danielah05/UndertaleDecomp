if (global.facing == Direction.Down)
    sprite_index = dsprite
if (global.facing == Direction.Right)
    sprite_index = rsprite
if (global.facing == Direction.Up)
    sprite_index = usprite
if (global.facing == Direction.Left)
    sprite_index = lsprite
crumpet = 0
strumpet = bbox_top
trumpet = bbox_left
if obj_time.left
{
    if (movement == 1)
    {
        turned = 1
        if (xprevious == (x + 3))
            x -= 2
        else
            x -= 3
        if (moving != true)
            image_index = 1
        moving = true
        image_speed = 0.2
        if (obj_time.up && global.facing == Direction.Up)
            turned = 0
        if (obj_time.down && global.facing == Direction.Down)
            turned = 0
        if (turned == 1)
            global.facing = Direction.Left
    }
}
if obj_time.up
{
    if (movement == 1)
    {
        turned = 1
        y -= 3
        if (moving != true)
            image_index = 1
        moving = true
        image_speed = 0.2
        if (obj_time.right && global.facing == Direction.Right)
            turned = 0
        if (obj_time.left && global.facing == Direction.Left)
            turned = 0
        if (turned == 1)
            global.facing = Direction.Up
    }
}
if obj_time.right
{
    if (movement == 1)
    {
        if (obj_time.left == 0)
        {
            turned = 1
            if (xprevious == (x - 3))
                x += 2
            else
                x += 3
            moving = true
            image_speed = 0.2
            if (moving != true)
                image_index = 1
            if (obj_time.up && global.facing == Direction.Up)
                turned = 0
            if (obj_time.down && global.facing == Direction.Down)
                turned = 0
            if (turned == 1)
                global.facing = Direction.Right
        }
    }
}
if obj_time.down
{
    if (movement == 1)
    {
        if (obj_time.up == 0)
        {
            turned = 1
            y += 3
            if (moving != true)
                image_index = 1
            moving = true
            image_speed = 0.2
            if (obj_time.right && global.facing == Direction.Right)
                turned = 0
            if (obj_time.left && global.facing == Direction.Left)
                turned = 0
            if (turned == 1)
                global.facing = Direction.Down
        }
    }
}
if control_check_pressed(InteractButton)
    event_user(0)
if (x < 0)
    x = 0
if (x > (room_width - sprite_width))
    x = (room_width - sprite_width)
if (y < 0)
    y = 0
if (y > (room_height - sprite_height))
    y = (room_height - sprite_height)
depth = (50000 - (y * 10))
