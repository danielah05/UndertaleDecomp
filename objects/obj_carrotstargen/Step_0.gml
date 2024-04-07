if (x > (xstart - 40) && obj_time.left)
    x -= 4
if (x < (xstart + 40) && obj_time.right)
    x += 4
if obj_time.up
    y -= 4
if obj_time.down
    y += 4
if (global.mnfight != 2)
    instance_destroy()
