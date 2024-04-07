image_xscale = 2
image_yscale = 2
image_index = 0
image_speed = 0
typeno = 0
typeamt = 2
type[0] = 1
type[1] = choose(1, 2)
type[2] = choose(1, 2)
type[3] = choose(1, 2)
type[4] = choose(1, 2)
type[5] = choose(1, 2)
type[6] = choose(1, 2)
flashtimer = 7
on = 0
con = 0
diff = 3
alarm[3] = 30
snd_play(snd_noise)
instance_create(0, 0, obj_flasher)
flash = caster_load("music/sfx_eyeflash.ogg")
obj_asgoreb_body.visible = false
obj_asgorespear.color = 0
obj_asgorespear.armtest = 0
obj_asgorespear.visible = false
x = (obj_asgoreb_body.x - 50)
y = obj_asgoreb_body.y
