draw_sprite(sprite_index, image_index, x, y)
if obj_time.right
    x += 4
if obj_time.up
    y -= 4
if obj_time.down
    y += 4
if obj_time.left
    x -= 4
if (x > 624)
    x = 624
if (x < 0)
    x = 0
if (y > 464)
    y = 464
if (y < 0)
    y = 0
