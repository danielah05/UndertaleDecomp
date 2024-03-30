if (ap == 0)
    image_alpha += 0.25
if (image_alpha > 0.6)
    ap = 1
direction += (random(6) - 3)
speed += (random(0.04) - 0.02)
image_alpha -= 0.01
if (image_alpha < 0.02)
    instance_destroy()
