if (pause == 1)
{
    siner = 0
    draw_sprite_ext(spr_glyde_hurt, image_index, (x - 72), (y - 24), 1, 1, 0, c_white, 1)
    x = xstart
    y = ystart
}
else
{
    dsiner += 1
    siner += (cos((dsiner / 24)) * 2)
    y = (ystart + (sin((siner / 12)) * 8))
    g = sin((siner / 6))
    gg = sin((siner / 12))
    if (attackmode == 1)
        image_blend = c_gray
    else
        image_blend = c_white
    draw_sprite_ext(spr_glyde_rightwing, 0, (x + 46), ((y + 106) + (g * 2)), 2, (1.7 - (g * 0.3)), 0, image_blend, 1)
    draw_sprite_ext(spr_glyde_body, 0, x, y, 2, 2, 0, image_blend, 1)
    draw_sprite_ext(spr_glyde_leftwing, 0, (x + 82), (y + 174), (1.95 - (g * 0.05)), (1.8 - (g * 0.2)), 0, image_blend, 1)
    draw_sprite_ext(spr_glyde_antenna, 0, ((x + 54) + (gg * 2)), (y + 4), 2, 2, (20 - (gg * 20)), c_white, 1)
    if (sh == 1)
    {
        sh_timer += sh_speed
        if (sh_timer > 1)
        {
            if (sh_timer >= 6)
                draw_sprite_ext(spr_glydeshot, 0, ((x + 72) + (gg * 8)), ((y + (gg * 10)) - 8), 2, 2, (20 - (gg * 20)), c_white, 1)
            if (floor(((sh_timer - 1) / 2)) < 4)
                draw_sprite_ext(spr_glyde_blackflash_b, floor(((sh_timer - 1) / 2)), ((x + 72) + (gg * 8)), ((y + (gg * 10)) - 8), 2, 2, (20 - (gg * 20)), c_white, 1)
            if (diff < 1)
                diff = 1
            if (sh_timer >= 12)
            {
                for (i = 0; i < diff; i += 1)
                {
                    bl = instance_create(((x + 72) + (gg * 8)), ((y + (gg * 10)) - 8), obj_glydeshot)
                    bl.direction = ((300 - (((i + 1) / diff) * 60)) + random(((1 / diff) * 60)))
                }
                sh_timer = -1
            }
        }
    }
}
