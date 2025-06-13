newtarg = instance_create((x - wherex), y, obj_xtarget)
newtarg.hspeed = 10
if (global.weapon == Items.EmptyGun)
	newtarg.hspeed = 15
newtarg.priority = (instance_number(obj_targetparent) - 1)
newtarg.fatalx = fatalx
