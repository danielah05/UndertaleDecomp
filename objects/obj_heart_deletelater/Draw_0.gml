draw_sprite(sprite_index, image_index, x, y)
draw_set_color(c_white)
draw_rectangle(global.idealborder[0], global.idealborder[2], global.idealborder[1], global.idealborder[3], true)
if (obj_time.right && x < (global.idealborder[1] - 16))
    x += 4
if (obj_time.left && x > global.idealborder[0])
    x -= 4
if (obj_time.down && y < (global.idealborder[3] - 16))
    y += 4
if (obj_time.up && y > global.idealborder[2])
    y -= 4
