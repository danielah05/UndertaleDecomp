if (bullettype == 1)
    sprite_index = spr_circlebulletmd1
if (bullettype == 2)
    sprite_index = spr_circlebulletsm
if (hspeed > 0)
    x += (sprite_width / 2)
if (hspeed < 0)
    x -= (sprite_width / 2)
visible = true
