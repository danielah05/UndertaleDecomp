if (pause == 1)
{
    siner = 0
    x = parent.x
}
draw_sprite_ext(spr_finalfroggit_body, 0, (x + offx), ((offy + y) + 90), 2, (2 - (sin((siner / 3)) * 0.15)), 0, c_white, 1)
if (pause == 0)
    draw_sprite_ext(spr_finalfroggit_head, 0, ((offx + x) + (sin((siner / 6)) * 10)), ((offy + y) + (sin((siner / 3)) * 4)), 2, 2, ((-(sin((siner / 6)))) * 2), c_white, 1)
if (pause == 1)
    draw_sprite_ext(spr_finalfroggit_head_hurt, 0, ((offx + x) + (sin((siner / 6)) * 10)), ((offy + y) + (sin((siner / 3)) * 4)), 2, 2, ((-(sin((siner / 6)))) * 2), c_white, 1)
siner += 1
anim += 1
