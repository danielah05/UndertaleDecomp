if (blue == 1 && sprite_index != spr_smheartbulletb)
    sprite_index = spr_smheartbulletb
if (cl == 0)
    draw_self_border(8, 8)
else
    draw_sprite(sprite_index, image_index, x, y)
