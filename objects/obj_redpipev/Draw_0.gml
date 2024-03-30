sn += 1
draw_sprite(spr_redpipe_top, floor((sn / 4)), x, y)
draw_sprite(spr_redpipe_bottom, floor((sn / 4)), x, ((y + 16) + ((image_yscale - 1) * 19)))
for (i = 0; i < image_yscale; i += 1)
    draw_sprite(spr_redpipe_middle, floor((sn / 4)), x, ((y + 1) + (i * 19)))
