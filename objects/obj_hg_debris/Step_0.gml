size -= 0.03
image_xscale = size
image_yscale = size
if (size < 0.01 || point_distance(x, y, (room_width / 2), (room_height / 2)) < 10)
    instance_destroy()
