draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
if (con == 1)
{
    image_index = 1
    image_speed = 0
    draw_sprite_ext(spr_tinyspider_sign, signimg, x, y, 2, 2, 0, c_white, 1)
    if (signimg >= 4)
    {
        draw_set_color(c_white)
        if (global.language == "ja")
            draw_set_font(fnt_ja_plainsmall)
        else
            scr_setfont(fnt_maintext)
        scr_drawtext_centered(x, (y - 100), scr_gettext("obj_signspider_100"))
        if (signno == 0 || signno == 1 || signno == 6 || signno == 10)
            draw_sprite(spr_spiderbullet1, 0, x, (y - 70))
        if (signno == 8)
            draw_sprite(spr_croissantl, 0, x, (y - 70))
        if (signno == 12)
        {
            draw_sprite(spr_croissantl, 0, (x - 15), (y - 70))
            draw_sprite(spr_croissantl, 0, (x + 5), (y - 70))
        }
        if (signno == 2 || signno == 13)
        {
            draw_sprite(spr_spiderbullet1, 0, (x - 15), (y - 70))
            draw_sprite(spr_spiderbullet1, 0, (x + 15), (y - 70))
        }
        if (signno == 11)
        {
            draw_sprite(spr_donutbullet, 0, (x - 15), (y - 70))
            draw_sprite(spr_donutbullet, 0, (x + 15), (y - 70))
        }
        if (signno == 3 || signno == 5 || signno == 7)
        {
            draw_sprite(spr_spiderbullet1, 0, (x - 15), (y - 70))
            draw_sprite(spr_donutbullet, 0, (x + 5), (y - 70))
        }
        if (signno == 4 || signno == 9 || signno == 15)
            draw_sprite(spr_cupcakebullet, 0, x, (y - 70))
        if (signno == 14)
        {
            draw_sprite(spr_spiderbullet1, 0, (x - 25), (y - 70))
            draw_sprite(spr_donutbullet, 0, x, (y - 70))
            draw_sprite(spr_croissantl, 0, (x + 25), (y - 70))
        }
    }
    if (signimg < 4)
        signimg += 0.5
}
buffer -= 1
if (global.myfight > 0 || global.mnfight > 0)
{
    if (con < 2 && buffer < 1)
        con = 2
}
if (con == 2)
{
    signimg -= 0.5
    draw_sprite_ext(spr_tinyspider_sign, signimg, x, y, 2, 2, 0, c_white, 1)
    if (signimg < 1)
        con = 3
}
if (con == 3)
{
    image_speed = 0.5
    if (hspeed < 10)
        hspeed += 1
    if (x > 650)
        instance_destroy()
}
