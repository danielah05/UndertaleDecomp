if (normal == 1)
{
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 1)
    draw_sprite_ext(spr_dummymissle_sh, image_index, x, y, 1, 1, image_angle, c_white, 1)
}
if (create < 6)
{
    draw_sprite_ext(spr_dummymissle_shot, (6 - create), x, y, 1, 1, image_angle, c_white, 1)
    create += 1
    if (create >= 6)
        normal = 1
}
if (destroy >= 1)
{
    x += (random(2) - random(2))
    y += (random(2) - random(2))
    if (destroy >= 2)
    {
        image_xscale += 0.25
        image_yscale += 0.25
    }
    draw_sprite_ext(spr_dummymissle_shot, (destroy - 1), x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
    destroy += 1
    if (destroy >= 8)
        instance_destroy()
}
