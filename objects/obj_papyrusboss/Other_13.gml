alarm[10] = 30
global.hurtanim[myself] = 0
with (mypart1)
    instance_destroy()
visible = false
dh = instance_create((x + 41), y, obj_papyrusdeadhead)
db = instance_create(x, y, obj_papyrusdeadbody)
caster_free(global.batmusic)
caster_free(global.batmusic2)
