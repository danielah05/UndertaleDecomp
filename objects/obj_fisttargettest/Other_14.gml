newtarg = instance_create((x - wherex), y, obj_xtarget)
newtarg.hspeed = 12
newtarg.priority = (instance_number(obj_targetparent) - 1)
newtarg.fatalx = fatalx
