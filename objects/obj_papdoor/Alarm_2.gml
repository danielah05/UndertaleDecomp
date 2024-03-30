global.entrance = 1
instance_create(0, 0, obj_persistentfader)
room_goto(room_next(room))
snd_play(mus_doorclose)
