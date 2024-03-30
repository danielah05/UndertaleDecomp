if (hoopx < 650)
    draw_sprite_ext(spr_bball_hoop_back, 0, hoopx, (y - 250), 2, 2, 0, image_blend, image_alpha)
if (drawa == 1)
{
    alphysy += 30
    heightdown = ((alphysy + 154) - (y - 52))
    if (heightdown < 0)
        heightdown = 0
    width = 88
    height = (154 - heightdown)
    if (height > 0)
        draw_sprite_part(spr_adate_intotrash, 0, 0, 0, 88, height, (x - 40), alphysy)
    else
    {
        drawa = 0
        snd_play(snd_impact)
        snd_stop(snd_fall)
    }
}
if (hoopx < 650)
    draw_sprite_ext(spr_bball_hoop, 0, hoopx, (y - 250), 2, 2, 0, image_blend, image_alpha)
yoff = (floor(acounter) * 2)
draw_sprite_ext(spr_adate_trashcan_bottom, 0, (x + xoff), (y - floor(yoff)), 2, 2, rot, image_blend, image_alpha)
if (acounter < 4)
    draw_sprite_ext(spr_adate_trashcan_top, 0, (x + topx), (y - floor(yoff)), 2, 2, 0, image_blend, image_alpha)
if (aturn == 1)
{
    draw_sprite_ext(spr_adate_atrashbottom, floor(acounter), (x + 8), y, 2, 2, 0, image_blend, image_alpha)
    if (acounter >= 4)
        draw_sprite_ext(spr_adate_atrashtop, global.faceemotion, ((x + topx) + 8), (y - yoff), 2, 2, 0, image_blend, image_alpha)
    if (acounter < 4)
        acounter += 0.5
}
if (con == 1)
{
    if (hoopx > (x - 60))
        hoopx -= 25
    else
        hoopx = (x - 60)
    if (topx < 100)
        topx += 10
    else
    {
        snd_play(snd_fall)
        con = 3
        drawa = 1
        sinerf = 30
        siner = 0
    }
}
if (con == 3 && drawa == 0)
{
    siner += 1
    sinerf -= 2
    rot = (sin((siner / 1)) * sinerf)
    xoff = (sin((siner / 1)) * sinerf)
    if (sinerf <= 0)
    {
        rot = 0
        xoff = 0
        con = 4
        alarm[4] = 10
    }
}
if (con == 5)
{
    if (hoopx < 650)
        hoopx += 20
    else
        hoopx = 650
    if (topx > 0)
        topx -= 10
    else
        con = 6
}
if (fadein == 1)
{
    image_blend = merge_color(c_white, image_blend, 0.7)
    fadecounter += 1
    if (fadecounter > 20)
    {
        fadein = 0
        image_blend = c_white
    }
}
if (shake > 0)
{
    x = ((xstart + random(shake)) - random(shake))
    y = ((ystart + random(shake)) - random(shake))
}
