if (image_alpha < 1 && off == 0)
    image_alpha += 0.1
if (x < (global.idealborder[0] - 30))
    off = 1
if (off == 1)
    image_alpha -= 0.05
if (image_alpha < 0.1 && off == 1)
    instance_destroy()
