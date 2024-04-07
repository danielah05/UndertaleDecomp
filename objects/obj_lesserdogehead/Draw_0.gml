if instance_exists(tailobj)
{
    image_speed = (tailobj.mercymod / 900)
    if (image_speed > 0.5)
        image_speed = 0.5
    x = tailobj.x
    y = (tailobj.y - (tailobj.mercymod / 4))
    if (tailobj.sprite_index == spr_lesserdoge)
    {
        draw_set_color(c_white)
        ossafe_fill_rectangle((x + 44), (79 + y), (x + 81), ((79 + y) + (tailobj.mercymod / 4)))
        ossafe_fill_rectangle((x + 54), (79 + y), (x + 76), ((98 + y) + (tailobj.mercymod / 4)))
        draw_sprite(sprite_index, image_index, x, y)
        if (tailobj.mercymod > 500)
        {
            ossafe_fill_rectangle((x + 116), -1, (x + 152), ((-1 + ((tailobj.mercymod - 500) / 4)) - 40))
            draw_sprite_ext(sprite_index, image_index, (x + 196), (((tailobj.mercymod - 500) / 4) + 40), -1, -1, 0, c_white, 1)
        }
        thismercy = tailobj.mercymod
    }
}
else
    instance_destroy()
