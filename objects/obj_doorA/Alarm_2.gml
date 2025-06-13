global.entrance = 1
instance_create(0, 0, obj_persistentfader)
if (room != room_castle_prebarrier)
	room_goto(room_next(room))
else if (FL_TruePacifist == true)
	room_goto(room_castle_trueexit)
else
	room_goto_next()
