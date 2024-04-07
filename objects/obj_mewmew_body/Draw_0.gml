if (sprite_index == spr_boss_mewmew_idle)
{
    tail_timer += 0.25
    if (tail_timer >= 0)
        image_index = tail_timer
    if (tail_timer >= 7)
    {
        image_index = 0
        tail_timer = -6
    }
    if (true_battle == 0)
    {
        tail_timer = 0
        image_index = 0
    }
}
if (head == 0)
{
    if (image_xscale > 0)
    {
        draw_sprite_ext(sprite_index, image_index, ((x + vx) + shakex), y, image_xscale, image_yscale, 0, c_white, image_alpha)
        if (sprite_index == spr_boss_mewmew_idle)
            draw_sprite_ext(spr_boss_mewmew_face, global.faceemotion, ((vx + x) + (31 * image_xscale)), (y + (9 * image_yscale)), image_xscale, image_yscale, 0, c_white, image_alpha)
    }
    else
    {
        draw_sprite_ext(sprite_index, image_index, (vx + x), y, image_xscale, image_yscale, 0, c_white, image_alpha)
        if (sprite_index == spr_boss_mewmew_idle)
            draw_sprite_ext(spr_boss_mewmew_face, global.faceemotion, ((vx + x) + (31 * image_xscale)), (y + (9 * image_yscale)), image_xscale, image_yscale, 0, c_white, image_alpha)
    }
}
else
{
    draw_sprite_ext(spr_boss_mewmew_hold, image_index, ((x + vx) + shakex), (y + shakey), image_xscale, image_yscale, 0, c_white, image_alpha)
    draw_sprite_ext(spr_boss_mewmew_face_centered, global.faceemotion, (x + headx), ((y + heady) + shakey), image_xscale, image_yscale, headrot, c_white, image_alpha)
}
if (abs(shakex) > 0)
{
    if (shakex > 0)
        shakex -= 2
    if (shakex < 0)
        shakex += 2
    shakex = (-shakex)
}
if (abs(shakey) > 0)
{
    if (shakey > 0)
        shakey -= 2
    if (shakey < 0)
        shakey += 2
    shakey = (-shakey)
}
if (whitefade == 1)
{
    bval = (whiteval - 1.5)
    draw_set_alpha(whiteval)
    draw_set_color(c_white)
    draw_rectangle(-100, -100, 999, 999, false)
    draw_set_alpha(bval)
    draw_set_color(c_black)
    draw_rectangle(-100, -100, 999, 999, false)
    draw_set_alpha(1)
}
