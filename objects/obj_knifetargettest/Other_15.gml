newtarg = instance_create(((x + sprite_width) + wherex), y, obj_ztarget)
newtarg.hspeed = -12
newtarg.priority = (instance_number(obj_targetparent) - 1)
newtarg.fatalx = fatalx
