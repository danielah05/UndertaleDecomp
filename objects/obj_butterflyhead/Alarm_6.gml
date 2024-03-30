alarm[6] = 40
sm = instance_create(x, y, obj_strangeman_butterfly)
sm.king = obj_heart
sm.alarm[0] = -1
sm.alarm[6] = -1
sm.direction = point_direction(sm.x, sm.y, (obj_heart.x + 6), (obj_heart.y + 6))
sm.speed = 4
