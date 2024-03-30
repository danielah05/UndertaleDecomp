if (follow == 1)
{
    moving = false
    if (obj_mainchara.x < (x - 34))
    {
        x -= 3
        if (speedup == 1)
            x -= 3
        sprite_index = lsprite
        image_speed = 0.25
        moving = true
        look = 0
    }
    if (obj_mainchara.x > (x + 34))
    {
        x += 3
        if (speedup == 1)
            x += 3
        sprite_index = rsprite
        image_speed = 0.25
        moving = true
        look = 0
    }
    if (moving == false)
    {
        speedup = 0
        image_index = 0
        image_speed = 0
        look += 1
        if (look > 60)
            sprite_index = usprite
    }
}
if (x > 450 && con == 0 && FL_InteractedWithGarbageSavepoint < 6)
{
    hspeed = 6
    FL_InteractedWithGarbageSavepoint = 6
    follow = 2
    con = 1
    sprite_index = rsprite
    image_index = 0
    image_speed = 0.25
    alarm[3] = 60
}
