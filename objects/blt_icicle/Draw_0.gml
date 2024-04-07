if (vspeed > 0)
    image_index = 0
else
    image_index = 1
draw_self_border()
if (y > (global.idealborder[3] + 60))
    instance_destroy()
