if instance_position(checkx, checky, obj_tilepink)
    thistile = 1
if instance_position(checkx, checky, obj_tilered)
    thistile = 2
if instance_position(checkx, checky, obj_tilepurple)
    thistile = 3
if instance_position(checkx, checky, obj_tileyellow)
    thistile = 4
if instance_position(checkx, checky, obj_tileorange)
    thistile = 5
if instance_position(checkx, checky, obj_tileblue)
    thistile = 6
if instance_position(checkx, checky, obj_tilegreen)
    thistile = 7
tileid = collision_point(checkx, checky, obj_tileguytileparent, 0, 1)
