action_set_relative(0)
sprite_index = global.bulletappearance
myspeed = global.bulletvariable[0]
mydirection = global.bulletvariable[6]
mydirectionalspeed = global.bulletvariable[7]
myrandomspeed = global.bulletvariable[1]
mydirectionrandom = global.bulletvariable[2]
gravity = global.bulletvariable[3]
gravity_direction = global.bulletvariable[4]
friction = global.bulletvariable[5]
instance_create((x + ((sprite_width / 2) - 8)), (y + ((sprite_width / 2) - 8)), blt_gen)
dmg = 0
action_move_point(obj_heart.x, obj_heart.y, ((myspeed + (random(myrandomspeed) * 2)) - myrandomspeed))
action_set_relative(1)
action_set_motion(mydirection, ((mydirectionalspeed + (random(myrandomspeed) * 2)) - myrandomspeed))
action_set_relative(0)
direction += ((random(mydirectionrandom) * 2) - mydirectionrandom)
if (sprite_index == spr_dirbullet)
    image_speed = 0
action_set_relative(0)
