draw_set_color(c_red)
twdsXspeed += (owngravity * gravityincrement)
if collision_line(x, y, twdsX, twdsY, obj_heart, false, true)
    draw_set_color(c_green)
if collision_line(x, y, (twdsX + twdsXspeed), (twdsY + twdsYspeed), obj_heart, false, true)
    draw_set_color(c_green)
draw_triangle(x, y, twdsX, twdsY, (twdsX + twdsXspeed), (twdsY + twdsYspeed), 0)
twdsX += twdsXspeed
twdsY += twdsYspeed
