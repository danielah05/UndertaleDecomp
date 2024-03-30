siner += 1
if (on >= 1 && on <= 4)
{
    if (on == 1 || on == 2 || on == 3)
    {
        if (onion_blue_alpha < 1)
            onion_blue_alpha += 0.1
    }
    draw_sprite_ext(spr_oniontblue, 0, x, y, ((0.1 + onion_blue_alpha) + (sin((siner / 4)) * 0.05)), (onion_blue_alpha + (sin((siner / 4)) * 0.05)), 0, c_white, onion_blue_alpha)
}
if (on == 2 || on == 3 || on == 4)
{
    if (type == 0)
        sprite_index = spr_oniont_l
    if (type == 1)
        sprite_index = spr_oniont_r
    if (type == 2)
        sprite_index = spr_oniont_coyl
    if (type == 3)
        sprite_index = spr_oniont_coyd
    if (type == 4)
        sprite_index = spr_oniont_bye
    if (type == 0 || type == 1 || type == 2)
        draw_sprite_part(sprite_index, floor((siner / 6)), 0, 0, sprite_width, floor(onionh), (x - floor((sprite_width / 2))), (y - floor(onionh)))
    if (type == 3)
        draw_sprite_part(sprite_index, floor((siner / 6)), 0, 0, sprite_width, floor(onionh), (x - 22), (y - floor(onionh)))
    if (type == 4)
        draw_sprite_part(sprite_index, floor((siner / 6)), 0, 0, sprite_width, floor(onionh), (x - 6), (y - floor(onionh)))
    if (on == 2 || on == 3)
    {
        if (onionh < sprite_height)
        {
            if (special == false)
                onionh += 1
            if (special == true)
                onionh += 0.25
        }
    }
    if (on == 4)
    {
        if (onionh > 0)
            onionh -= 1
        else if (onion_blue_alpha > 0)
            onion_blue_alpha -= 0.1
    }
}
if (follow == 1)
{
    if (x < 162)
    {
        x = xprevious
        hspeed = 0
    }
    if (x > 1048)
    {
        x = xprevious
        hspeed = 0
    }
    if (x < (obj_mainchara.x + 6))
        hspeed += 0.17
    if (x > (obj_mainchara.x + 16))
        hspeed -= 0.17
    friction = 0.1
    x = floor(x)
}
