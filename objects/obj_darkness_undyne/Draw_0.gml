if instance_exists(obj_mainchara)
{
    x1 = (obj_mainchara.x - 10)
    x2 = (obj_mainchara.x + 30)
    y1 = (obj_mainchara.y - 5)
    y2 = (obj_mainchara.y + 35)
    draw_sprite_ext(spr_darkhalo_big, 0, x1, y1, 1, 1, 0, c_white, glowamt)
    draw_set_alpha(glowamt)
    draw_set_color(c_black)
    draw_set_alpha(1)
    if (glowyes == 1)
    {
        glowamt = (0.5 + (obj_mainchara.x / 1200))
        curvol = (maxvol - (obj_mainchara.x / 600))
        if (curvol <= 0)
            curvol = 0
        caster_set_volume(global.currentsong, curvol)
    }
    if (glowyes == 2)
    {
        glowamt -= 0.02
        if (glowamt <= 0)
            instance_destroy()
    }
}
