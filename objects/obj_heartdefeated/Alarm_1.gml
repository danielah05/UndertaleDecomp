snd_play(snd_break2)
visible = false
instance_create((x - 2), y, obj_heartshard)
instance_create(x, (y + 3), obj_heartshard)
instance_create((x + 2), (y + 6), obj_heartshard)
instance_create((x + 8), y, obj_heartshard)
instance_create((x + 10), (y + 3), obj_heartshard)
instance_create((x + 12), (y + 6), obj_heartshard)
alarm[2] = 50
