instance_create((x + ((sprite_width / 2) - 8)), (y + ((sprite_width / 2) - 8)), blt_gen)
dmg = 4
if (global.hp < 7)
    dmg = 2
image_speed = 0.5
vspeed = (random(8) - 4)
