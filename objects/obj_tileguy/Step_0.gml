if (moving == true)
{
    x += 3
    if (x >= (prevx + 18))
    {
        x = (prevx + 20)
        event_user(1)
    }
}
if (moving == 2)
{
    y -= 3
    if (y <= (prevy - 18))
    {
        y = (prevy - 20)
        event_user(1)
    }
}
if (moving == 3)
{
    x -= 3
    if (x <= (prevx - 18))
    {
        x = (prevx - 20)
        event_user(1)
    }
}
if (moving == 4)
{
    y += 3
    if (y >= (prevy + 18))
    {
        y = (prevy + 20)
        event_user(1)
    }
}
if (moving == false)
{
    if (!obj_time.left)
    {
        if (!obj_time.right)
        {
            if (!obj_time.down)
            {
                if (!obj_time.up)
                {
                    image_index = 0
                    image_speed = 0
                }
            }
        }
    }
}
if (moving == true)
{
    sprite_index = spr_maincharar
    image_speed = 0.334
}
if (moving == 2)
{
    sprite_index = spr_maincharau
    image_speed = 0.334
}
if (moving == 3)
{
    sprite_index = spr_maincharal
    image_speed = 0.334
}
if (moving == 4)
{
    sprite_index = spr_maincharad
    image_speed = 0.334
}
if obj_time.right
{
    if (moving == false)
    {
        if (image_index == 0)
            image_index = 1
        sprite_index = spr_maincharar
        checkx = (x + 30)
        checky = (y + 25)
        thistile = 0
        event_user(0)
        nexttile = thistile
        if (nexttile != 2)
        {
            moving = true
            prevx = x
        }
    }
}
if obj_time.up
{
    if (moving == false)
    {
        if (image_index == 0)
            image_index = 1
        sprite_index = spr_maincharau
        checkx = (x + 10)
        checky = (y + 5)
        thistile = 0
        event_user(0)
        nexttile = thistile
        if (nexttile != 2 && nexttile != 0)
        {
            moving = 2
            prevy = y
        }
    }
}
if obj_time.left
{
    if (moving == false)
    {
        if (image_index == 0)
            image_index = 1
        sprite_index = spr_maincharal
        checkx = (x - 10)
        checky = (y + 25)
        thistile = 0
        event_user(0)
        nexttile = thistile
        if (nexttile != 2 && nexttile != 0)
        {
            moving = 3
            prevx = x
        }
    }
}
if obj_time.down
{
    if (moving == false)
    {
        if (image_index == 0)
            image_index = 1
        sprite_index = spr_maincharad
        checkx = (x + 10)
        checky = (y + 45)
        thistile = 0
        event_user(0)
        nexttile = thistile
        if (nexttile != 2 && nexttile != 0)
        {
            moving = 4
            prevy = y
        }
    }
}
obj_mainchara.x = x
obj_mainchara.y = y
