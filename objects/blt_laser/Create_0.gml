action_set_relative(1)
mydirection = global.bulletvariable[0]
mydirectionalspeed = global.bulletvariable[1]
twdsX = global.bulletvariable[2]
twdsY = global.bulletvariable[3]
owngravity = global.bulletvariable[4]
owngravity_direction = global.bulletvariable[5]
friction = global.bulletvariable[6]
twdsXspeed = global.bulletvariable[7]
twdsYspeed = global.bulletvariable[8]
gravityincrement = 0
action_set_motion(mydirection, mydirectionalspeed)
if (sprite_index == spr_dirbullet)
    image_speed = 0
action_set_relative(0)
