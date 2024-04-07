view_xview_set(0, (choose(-1, 1) * intensity))
view_yview_set(0, (choose(1, -1) * intensity))
intensity -= 1
if (intensity == 0)
    instance_destroy()
alarm[0] = 1
