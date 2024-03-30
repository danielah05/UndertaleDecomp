if instance_exists(obj_drakehead)
{
    draw_sprite_ext(spr_snowdrake_legs, 0, x, y, 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_snowdrake_body, 0, x, (y + ((obj_drakehead.y - ystart) / 3)), 2, 2, 0, c_white, 1)
}
else
{
    draw_sprite_ext(spr_snowdrake_legs, 0, x, y, 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_snowdrake_body, 0, x, y, 2, 2, 0, c_white, 1)
}
