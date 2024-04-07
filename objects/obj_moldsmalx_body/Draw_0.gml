if (stage == 0)
    draw_sprite(sprite_index, image_index, x, y)
if (stage == 1)
{
    xsin2 = (cos((xsin / 10)) * 4)
    sprite_index = spr_moldsmalx_up
    g = instance_create(x, (y + 170), obj_moldsmalx_part)
    g.c = 1
    g = instance_create(x, (y + 140), obj_moldsmalx_part)
    g = instance_create(x, (y + 110), obj_moldsmalx_part)
    g.c = 1
    instance_create(x, (y + 80), obj_moldsmalx_part)
    if (room == room_end_castroll || room == room_monsteralign_test)
        obj_moldsmalx_part.bborder = (ystart + 100)
    stage = 2
}
if (stage == 2)
{
    height += 2
    y -= 4
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, 50, height, (x + xsin2), y, 2, 2, c_white, 1)
    if (height > 104)
        stage = 3
}
if (stage == 3)
{
    obj_moldsmalx_part.f = 2
    xsin2 = (cos((xsin / 10)) * 4)
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, 50, height, (x + xsin2), y, 2, 2, c_white, 1)
    xsin += 1
}
