king = obj_heart
if instance_exists(obj_strangeman_intro)
    king = obj_strangeman_intro
if instance_exists(obj_butterflyhead)
    king = obj_butterflyhead
move_towards_point(king.x, king.y, 1)
alarm[0] = 10
image_speed = 0.2
siner = 0
dmg = 9
