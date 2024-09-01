onoff += 1
if (onoff > 3)
    onoff = 0
draw_set_color(c_black)
if (instance_exists(obj_mouthbeam) == false)
{
    if (mode == 0)
        ossafe_fill_rectangle(x, (y + 8), (x + 60), (y + 110))
    if (mode == 1)
        ossafe_fill_rectangle((x - 10), (y + 8), (x + 70), (y + 110))
    if (mode == 2)
        ossafe_fill_rectangle((x - 18), (y + 8), (x + 78), (y + 110))
}
if (con == 3)
{
    con = 4
    cntr = 0
    alarm[4] = 40
}
if (con == 4)
{
    cntr += 1
    draw_sprite_ext(spr_mouthflash, 0, 274, (202 - (sin((siner / 4)) * 3)), 1, 1, 0, c_white, ((cntr - (onoff * 5)) / 15))
}
if (con == 5)
{
    laugh = 1
    mode = 2
    b = instance_create(271, 214, obj_mouthbeam)
    b.depth = (depth + 1)
    con = 6
    alarm[4] = 25
}
if (con == 7)
{
    laugh = 0
    mode = 0
    con = 0
}
if (frozen == false)
{
    siner += 1
    if (desperate == 1)
        siner += 0.4
    anim += 0.25
}
op = 60
draw_sprite_ext(spr_floweyx_mouthbridge, image_index, (x + 10), y, 1, 1, 0, image_blend, image_alpha)
if (mode == 0)
{
    if (rotbonus > 0)
        rotbonus -= 5
    else
        rotbonus = 0
    if (xbonus > 0)
        xbonus -= 2
    else
        xbonus = 0
    if (ybonus < 0)
        ybonus += 2
    else
        ybonus = 0
    ybonus = 0
}
if (mode == 1)
{
    if (ybonus > -4)
        ybonus -= 2
    if (xbonus < 6)
        xbonus += 2
    if (rotbonus < 15)
        rotbonus += 5
}
if (mode == 2)
{
    if (ybonus > -8)
        ybonus -= 4
    if (xbonus < 6)
        xbonus += 2
    if (rotbonus < 24)
        rotbonus += 8
}
if (desperate == 0)
{
    draw_sprite_ext(spr_floweyx_mouthedge, image_index, (((x + (sin((siner / 2)) * 3)) - 20) + xbonus), (((y + cos((siner / 2))) - 5) + ybonus), 1, (1 + (sin((siner / 4)) * 0.03)), ((0 - cos((siner / 2))) - rotbonus), image_blend, 1)
    draw_sprite_ext(spr_floweyx_mouthl, image_index, ((x + (sin((siner / 2)) * 3)) + xbonus), ((y + cos((siner / 2))) + ybonus), 1, (1 + (sin((siner / 4)) * 0.03)), ((0 - cos((siner / 2))) - rotbonus), image_blend, 1)
    draw_sprite_ext(spr_floweyx_mouthedge, image_index, ((((x - (sin((siner / 2)) * 3)) + op) + 20) - xbonus), (((y + cos((siner / 2))) - 5) + ybonus), -1, (1 + (sin((siner / 4)) * 0.03)), ((0 + cos((siner / 2))) + rotbonus), image_blend, 1)
    draw_sprite_ext(spr_floweyx_mouthl, image_index, (((x + op) - (sin((siner / 2)) * 3)) - xbonus), ((y + cos((siner / 2))) + ybonus), -1, (1 + (sin((siner / 4)) * 0.03)), ((0 + cos((siner / 2))) + rotbonus), image_blend, 1)
}
if (desperate == 1)
{
    draw_sprite_ext(spr_floweyx_mouthedge, image_index, (((x + (sin((siner / 2)) * 4)) - 20) + xbonus), (((y + cos((siner / 2))) - 5) + ybonus), 1, (1 + (sin((siner / 4)) * 0.06)), ((0 - cos((siner / 2))) - rotbonus), image_blend, 1)
    draw_sprite_ext(spr_floweyx_mouthl, image_index, ((x + (sin((siner / 2)) * 4)) + xbonus), ((y + cos((siner / 2))) + ybonus), 1, (1 + (sin((siner / 4)) * 0.05)), ((0 - cos((siner / 2))) - rotbonus), image_blend, 1)
    draw_sprite_ext(spr_floweyx_mouthedge, image_index, ((((x - (sin((siner / 2)) * 4)) + op) + 20) - xbonus), (((y + cos((siner / 2))) - 5) + ybonus), -1, (1 + (sin((siner / 4)) * 0.06)), ((0 + cos((siner / 2))) + rotbonus), image_blend, 1)
    draw_sprite_ext(spr_floweyx_mouthl, image_index, (((x + op) - (sin((siner / 2)) * 4)) - xbonus), ((y + cos((siner / 2))) + ybonus), -1, (1 + (sin((siner / 4)) * 0.05)), ((0 + cos((siner / 2))) + rotbonus), image_blend, 1)
}
draw_sprite_ext(spr_floweyx_dimple, anim, (((x + (sin((siner / 2)) * 3)) - 5) + xbonus), (y - 10), 1, (1 + (sin((siner / 4)) * 0.03)), (0 + cos((siner / 2))), image_blend, 1)
draw_sprite_ext(spr_floweyx_dimple, anim, ((((x + op) - (sin((siner / 2)) * 3)) + 5) - xbonus), (y - 10), -1, (1 + (sin((siner / 4)) * 0.03)), (0 + cos((siner / 2))), image_blend, 1)
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    if control_check_pressed(CancelButton)
    {
        if (mode == 0)
            mode = 1
        else
            mode = 0
    }
}
if (global.debug == true)
{
    if control_check_pressed(MenuButton)
    {
        if (laugh == 0)
            laugh = 1
        else
            laugh = 0
    }
}
if (laugh == 1)
{
    siner = 0
    laughtimer += 1
    if (laughtimer == 1)
    {
        rotbonus = -3
        xbonus = -1
        ybonus = 0
    }
    if (laughtimer == 2)
    {
        rotbonus = 6
        xbonus = 2
        ybonus = -1
    }
    if (laughtimer == 3)
    {
        rotbonus = 18
        xbonus = 4
        ybonus = -3
    }
    if (laughtimer == 4)
    {
        rotbonus = 20
        xbonus = 6
        ybonus = -4
    }
    if (laughtimer == 5)
    {
        rotbonus = 12
        xbonus = 4
        ybonus = -3
    }
    if (laughtimer == 6)
    {
        rotbonus = 6
        xbonus = 2
        ybonus = -2
    }
    if (laughtimer == 7)
    {
        rotbonus = 0
        xbonus = 0
        ybonus = 0
    }
    if (laughtimer == 6)
        laughtimer = 1
}
