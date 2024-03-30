global.typer = 33
blcontype = 1
blcon = instance_create(((xstart + 110) + 60), (ystart - 10), obj_blconwideslave)
blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
blcon.parent = blconwd
