instance_create((obj_heart.x - 50), (global.idealborder[3] + 20), obj_butterflybullet_2)
instance_create((obj_heart.x + 10), (global.idealborder[3] + 20), obj_butterflybullet_2)
instance_create((obj_heart.x + 70), (global.idealborder[3] + 20), obj_butterflybullet_2)
if instance_exists(obj_butterflybullet_2)
    obj_butterflybullet_2.dmg = dmg
alarm[0] = rate
