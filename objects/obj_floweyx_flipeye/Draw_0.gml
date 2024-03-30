if (con == 0)
{
    if (frozen == false)
        siner += 1
    else if (frozen != 4)
        y = ((ystart + random(4)) - random(4))
}
if (con == 1)
{
    con = 3
    alarm[4] = 4
}
if (global.debug == true)
{
    if keyboard_check_pressed(ord("R"))
        con = 1
}
if (con == 3)
{
    siner2 += 1.2
    md = 1
    gr = make_color_rgb((170 + (sin((siner2 / 2)) * 70)), (170 + (sin(((siner2 + 3) / 2)) * 70)), (170 + (sin(((siner2 + 6) / 2)) * 70)))
    grgr = make_color_rgb((170 + (sin(((siner2 + 1) / 2)) * 70)), (170 + (sin(((siner2 + 4) / 2)) * 70)), (170 + (sin(((siner2 + 7) / 2)) * 70)))
    grgrgr = make_color_rgb((170 + (sin(((siner2 + 2) / 2)) * 70)), (170 + (sin(((siner2 + 4) / 2)) * 70)), (170 + (sin(((siner2 + 8) / 2)) * 70)))
}
if (con == 4)
{
    con = 5
    durara = 0
    oner = choose(0, 1)
    alarm[4] = 7
    image_blend = c_white
}
if (con == 5)
{
    opx = 0
    eba = instance_create(x, y, obj_eyeshot_a)
    eba.memorymode = memorymode
    eba.durara = durara
    eba.oner = oner
    if (wimpy == 0)
    {
        with (eba)
        {
            move_towards_point((obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8), (7 - (durara * 0.1)))
            friction = (-0.2 + (durara * 0.012))
            direction -= (18 * durara)
            if (oner == 1)
                direction += 9
        }
    }
    if (wimpy == 1)
    {
        with (eba)
        {
            move_towards_point((obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8), (3 - (durara * 0.1)))
            friction = (-0.1 - (durara * 0.02))
            direction -= (18 * durara)
            if (oner == 1)
                direction += 14
        }
    }
    opx = op
    ebb = instance_create((x + opx), y, obj_eyeshot_a)
    ebb.memorymode = memorymode
    ebb.durara = durara
    ebb.oner = oner
    if (wimpy == 0)
    {
        with (ebb)
        {
            move_towards_point((obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8), (7 - (durara * 0.1)))
            friction = (-0.2 + (durara * 0.012))
            direction += (18 * durara)
            if (oner == 1)
                direction += 9
        }
    }
    if (wimpy == 1)
    {
        with (ebb)
        {
            move_towards_point((obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8), (3 - (durara * 0.1)))
            friction = (-0.1 - (durara * 0.02))
            direction += (18 * durara)
            if (oner == 1)
                direction += 14
        }
    }
    durara += 1
    md = 1
    if (gr == c_white)
    {
        gr = c_red
        grgr = c_black
        grgrgr = c_black
    }
    else
    {
        gr = c_white
        grgr = c_white
        grgrgr = c_white
    }
}
if (con == 6)
{
    gr = c_white
    grgr = c_white
    grgrgr = c_white
    md = 0
    image_blend = c_white
    con = 0
}
if (con == 10)
{
    siner2 += 1.2
    md = 1
    gr = make_color_rgb((170 + (sin((siner2 / 2)) * 70)), (170 + (sin(((siner2 + 3) / 2)) * 70)), (170 + (sin(((siner2 + 6) / 2)) * 70)))
    grgr = make_color_rgb((170 + (sin(((siner2 + 1) / 2)) * 70)), (170 + (sin(((siner2 + 4) / 2)) * 70)), (170 + (sin(((siner2 + 7) / 2)) * 70)))
    grgrgr = make_color_rgb((170 + (sin(((siner2 + 2) / 2)) * 70)), (170 + (sin(((siner2 + 4) / 2)) * 70)), (170 + (sin(((siner2 + 8) / 2)) * 70)))
}
if (desperate == 1 && frozen == false)
    siner += 0.5
draw_sprite_ext(spr_flipeye_holder_bg, image_index, x, (y + (cos((siner / 3)) * 2)), 0.8, 0.8, (sin((siner / 4)) * 2), grgrgrgr, 1)
draw_sprite_ext(spr_flipeye_bg, image_index, (x - 5), (y + (cos((siner / 3)) * 3)), 1, 1, (sin((siner / 4)) * 2), grgrgrgr, 1)
if (md == 0)
{
    draw_sprite_ext(spr_flipeye_noiris, image_index, x, ((-4 + y) + (sin((siner / 3)) * 2)), 0.8, 0.8, (sin((siner / 2)) * 4), image_blend, 1)
    draw_sprite_ext(spr_flipeye_iris, image_index, x, ((-6 + y) + (sin((siner / 3)) * 4)), 0.8, 0.8, (sin((siner / 2)) * 4), image_blend, 1)
    if (desperate == 0)
        draw_sprite_ext(spr_flipeye_pupil, image_index, x, ((-5 + y) + (sin((siner / 3)) * 2)), (0.8 - (sin((siner / 3)) * 0.4)), (1 - (sin((siner / 3)) * 0.4)), 0, image_blend, 1)
    if (desperate == 1)
    {
        if (frozen == false || frozen == 4)
            draw_sprite_ext(spr_flipeye_pupil, image_index, x, ((-5 + y) + (sin((siner / 3)) * 2.5)), (0.8 - (sin((siner / 3)) * 0.3)), (0.8 - (sin((siner / 3)) * 0.3)), 0, image_blend, 1)
        else
            draw_sprite_ext(spr_flipeye_pupil, image_index, x, ((-5 + y) + (sin((siner / 3)) * 2.5)), (0.7 - (sin((siner / 3)) * 0.1)), (0.7 - (sin((siner / 3)) * 0.1)), 0, image_blend, 1)
    }
}
if (md == 1)
{
    draw_sprite_ext(spr_flipeye_noiris_flash, image_index, x, ((-4 + y) + (sin((siner / 3)) * 2)), 0.8, 0.8, (sin((siner / 2)) * 4), grgrgr, 1)
    draw_sprite_ext(spr_flipeye_iris_flash, image_index, x, ((-6 + y) + (sin((siner / 3)) * 4)), 0.8, 0.8, (sin((siner / 2)) * 4), grgr, 1)
    draw_sprite_ext(spr_flipeye_pupil_flash, image_index, x, ((-5 + y) + (sin((siner / 3)) * 2)), (0.8 - (sin((siner / 3)) * 0.4)), (1 - (sin((siner / 3)) * 0.4)), 0, gr, 1)
}
draw_sprite_ext(spr_flipeye_holder, image_index, x, (y + (cos((siner / 3)) * 2)), 0.8, 0.8, (sin((siner / 4)) * 2), image_blend, 1)
op = 126
draw_sprite_ext(spr_flipeye_holder_bg, image_index, (x + op), (y + (cos((siner / 3)) * 2)), -0.8, 0.8, ((-(sin((siner / 4)))) * 2), grgrgrgr, 1)
draw_sprite_ext(spr_flipeye_bg, image_index, ((x + 5) + op), (y + (cos((siner / 3)) * 3)), -1, 1, (sin((siner / 4)) * 2), grgrgrgr, 1)
if (md == 0)
{
    draw_sprite_ext(spr_flipeye_noiris, image_index, (x + op), ((-4 + y) + (sin((siner / 3)) * 2)), -0.8, 0.8, ((-(sin((siner / 2)))) * 4), image_blend, 1)
    draw_sprite_ext(spr_flipeye_iris, image_index, (x + op), ((-6 + y) + (sin((siner / 3)) * 4)), -0.8, 0.8, ((-(sin((siner / 2)))) * 4), image_blend, 1)
    if (desperate == 0)
        draw_sprite_ext(spr_flipeye_pupil, image_index, (x + op), ((-5 + y) + (sin((siner / 3)) * 2)), (-1 + (cos((siner / 3)) * 0.4)), (1 - (cos((siner / 3)) * 0.4)), 0, image_blend, 1)
    if (desperate == 1)
    {
        if (frozen == false || frozen == 4)
            draw_sprite_ext(spr_flipeye_pupil, image_index, (x + op), ((-5 + y) + (sin((siner / 3)) * 2.5)), (-0.9 + (cos((siner / 3)) * 0.3)), (0.9 - (cos((siner / 3)) * 0.3)), 0, image_blend, 1)
        else
            draw_sprite_ext(spr_flipeye_pupil, image_index, (x + op), ((-5 + y) + (sin((siner / 3)) * 2.5)), (-0.7 + (cos((siner / 3)) * 0.1)), (0.7 - (cos((siner / 3)) * 0.1)), 0, image_blend, 1)
    }
}
if (md == 1)
{
    draw_sprite_ext(spr_flipeye_noiris_flash, image_index, (x + op), ((-4 + y) + (sin((siner / 3)) * 2)), -0.8, 0.8, ((-(sin((siner / 2)))) * 4), grgrgr, 1)
    draw_sprite_ext(spr_flipeye_iris_flash, image_index, (x + op), ((-6 + y) + (sin((siner / 3)) * 4)), -0.8, 0.8, ((-(sin((siner / 2)))) * 4), grgr, 1)
    draw_sprite_ext(spr_flipeye_pupil_flash, image_index, (x + op), ((-5 + y) + (sin((siner / 3)) * 2)), (-1 + (cos((siner / 3)) * 0.4)), (1 - (cos((siner / 3)) * 0.4)), 0, gr, 1)
}
draw_sprite_ext(spr_flipeye_holder, image_index, (x + op), (y + (cos((siner / 3)) * 2)), -0.8, 0.8, ((-(sin((siner / 4)))) * 2), image_blend, 1)
