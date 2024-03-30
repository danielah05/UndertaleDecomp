siner += 1
siner2 += 1
if (image_alpha < 1)
    image_alpha += 0.05
x += (sin((siner2 / 6)) * 1)
y += (sin((siner / 8)) * 3)
draw_self_border_e()
if (global.turntimer < 2)
    instance_destroy()
