scale -= 0.03
image_xscale = scale
image_yscale = scale
if (scale < 0.1)
    instance_destroy()
if (global.turntimer < 1)
    instance_destroy()
