siner += 1
draw_set_color(c_black)
xox = lengthdir_x(220, (rot + 180))
yoy = lengthdir_y(220, (rot + 180))
draw_triangle(x, y, (x + xox), (y + yoy), ((-20 + x) + (xox / 2)), (y + 80), 0)
if (ss == 1)
{
    x += (sin((siner / 3)) * 5)
    y += (cos((siner / 2)) * 2)
}
if (image_index == 0)
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, rot, c_white, image_alpha)
if (image_index == 1)
    draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, (rot + 40), c_white, image_alpha)
counter += 1
if (counter > 57 && counter < 60)
    rot += 2
if (counter > 60 && counter < 62)
{
    rot -= 8
    if (spec == 1)
        num += 1
    if (num != 12)
    {
        xox = lengthdir_x(150, (rot + 180))
        yoy = lengthdir_x(70, (rot + 180))
        fr = instance_create((x + xox), (y + yoy), obj_6pan_fire)
        fr.gravity += (0.1 + random(0.08))
        fr = instance_create((x + xox), (y + yoy), obj_6pan_fire)
        fr = instance_create((x + xox), (y + yoy), obj_6pan_fire)
        fr.gravity += (0.07 + random(0.06))
        fr = instance_create((x + xox), (y + yoy), obj_6pan_fire)
        fr.gravity += (0.05 + random(0.04))
        fr.panparent = id
    }
    else
        act = instance_create((x - 140), (y - 10), obj_6pan_act)
}
if (counter >= 63 && counter < 67)
    rot -= 3
if (counter >= 63 && counter < 72)
    ss = 0
if (counter > 70 && counter < 72)
    rot += 6
if (counter >= 72)
{
    image_index = 0
    rot += 5
    if (rot > 3)
    {
        ss = 1
        rot = 0
        counter = 50
        if (num == 12)
            counter = -20
    }
}
