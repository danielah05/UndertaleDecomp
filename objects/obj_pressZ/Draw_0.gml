draw_self()
if (global.osflavor >= OSFlavors.Playstation)
{
    var button = scr_getbuttonsprite("Z", 0)
    if (button != -4)
        draw_sprite_ext(button, 0, ((x + 2) - sprite_get_width(button)), y, 2, 2, 0, c_white, 1)
}
else
    draw_sprite(spr_pressz_z, 0, x, y)
