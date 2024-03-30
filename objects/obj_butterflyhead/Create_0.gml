image_xscale = 2
image_yscale = 2
image_speed = 0
y = ((global.idealborder[3] - sprite_height) + 15)
x = ((global.idealborder[1] - sprite_width) + 19)
repeat (50)
    instance_create(((x + random(20)) - random(20)), ((y + random(20)) - random(20)), obj_strangeman_butterfly)
alarm[0] = 20
walking = false
shake = 2
nowy = y
nowx = x
alarm[5] = 10
alarm[6] = 30
factor = 15
dmg = 9
