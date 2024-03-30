instance_create((x + ((sprite_width / 2) - 8)), (y + ((sprite_width / 2) - 8)), blt_gen)
dmg = 4
if (global.hp < 7)
    dmg = 2
image_speed = 0.5
if (x < global.idealborder[0])
    instance_destroy()
alarm[0] = 40
alarm[1] = 45
bounced = 0
