counter += 1
siner += 1
if (melting == 0)
{
    draw_sprite_ext(spr_lemonbread_torso, (siner / 10), (x - 12), (y + 96), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_lemonbread_head, face_index, x, y, 2, 2, 0, c_white, 1)
}
if (counter > 100 && counter < 150)
{
    face_index += 0.25
    if (face_index >= 3)
        counter = 150
}
if (counter > 200 && counter < 230)
{
    changed = 1
    face_index += 0.5
    if (face_index > 6)
        face_index -= 1
}
if (counter == 230)
    face_index = 3
if (counter > 260)
{
    face_index -= 0.25
    if (face_index < 1)
    {
        face_index = 0
        counter = -90
    }
}
if (melting == 1)
{
    melt_index = 0
    melting = 2
}
if (melting == 2)
{
    melt_index += 0.5
    draw_sprite_ext(spr_lemonbread_melt, floor(melt_index), (x - 16), (y + 12), 2, 2, 0, c_white, 1)
    if (melt_index >= 9)
        melting = 3
}
if (melting == 4)
{
    melt_index -= 0.5
    draw_sprite_ext(spr_lemonbread_melt, floor(melt_index), (x - 16), (y + 12), 2, 2, 0, c_white, 1)
    if (melt_index < 1)
    {
        melting = 0
        if (changed == 0)
            counter = 80
        else
            counter = -50
        face_index = 0
    }
}
