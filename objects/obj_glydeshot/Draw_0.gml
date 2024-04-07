siner += 1
image_angle += aa
draw_sprite_ext(spr_glydeshot, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, (0.7 + sin((siner / 3))))
draw_sprite_ext(spr_glydeshot, 1, x, y, image_xscale, image_yscale, (image_angle + 45), image_blend, ((-(sin((siner / 3)))) + 0.7))
if (image_xscale < 3)
{
    image_xscale += 0.05
    image_yscale += 0.05
}
if (y > 500)
    instance_destroy()
if (global.turntimer < 2)
    instance_destroy()
