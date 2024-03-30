hshake = 0
vshake = 0
con = 2
redsiner = 0
dt = 0
w = 0
shakevalue = 3
rs_speed = 0
blacktime = 0
sfxtimer = 0
sfx = caster_load("music/f_destroyed3.ogg")
expl = caster_load("music/explosion.ogg")
caster_loop(sfx, 0.8, 1.4)
pit = 1.4
vol = 0.8
hyperboys = 0
if (room == room_truelab_castle_elevator)
    hyperboys = 1
