scr_monstersetup()
image_speed = 0
part1 = obj_memoryhead_body
mypart1 = instance_create(x, y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_hurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -999
sha = 0
shb = 0
turns = 0
coherent = 0
ds[0] = caster_load("music/dialup/dialup_0.ogg")
ds[1] = caster_load("music/dialup/dialup_1.ogg")
ds[2] = caster_load("music/dialup/dialup_2.ogg")
ds[3] = caster_load("music/dialup/dialup_3.ogg")
ds[4] = caster_load("music/dialup/dialup_4.ogg")
ds[5] = caster_load("music/dialup/dialup_5.ogg")
ht = 100
wd = 100

/// VULTU: Decomp code
audio_emitter = noone;

if (global.decomp_vars.RestoreSFXPan)
{
	audio_emitter = audio_emitter_create();
	
}