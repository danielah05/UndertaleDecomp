down = 0
if instance_exists(obj_greenspeargen)
    rating = obj_greenspeargen.rating
else
    rating = 10
image_speed = 0
countdown = instance_number(object_index)
if (countdown <= 1)
    image_index = 1
part = 0
site = choose(0, 1, 2, 3)
alarm[0] = 1
active = false
speedmod = 1
alphoid = 0
image_alpha = 0
object0 = obj_spearblocker
dmg = 7
