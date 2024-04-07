if instance_exists(parent)
    draw_sprite_ext(sprite_index, image_index, x, y, parent.image_xscale, parent.image_yscale, 0, c_white, parent.image_alpha)
else
    instance_destroy()
