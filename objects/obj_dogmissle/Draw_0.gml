if (x < -10)
    instance_destroy()
if (anchor == 1)
{
    x = (obj_amalgam_laserdog.x + 34)
    y = (obj_amalgam_laserdog.y + 16)
    off -= 2
    draw_sprite_part_ext(sprite_index, 0, 0, 0, (0 - off), sprite_height, (x + (off * 2)), y, 2, 2, c_white, 1)
}
if (anchor == 0)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
