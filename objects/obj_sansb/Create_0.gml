if (global.plot < 201)
    global.plot = 201
scr_monstersetup()
image_speed = 0
part1 = obj_sansb_body
mypart1 = instance_create(x, y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_nosound
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -99999
sha = 0
shb = 0
ht = 100
wd = 120
con = 1
alarm[4] = 30
obj_borderparent.visible = false
global.mnfight = 99
global.myfight = 99
global.faceemotion = 4
normalfight = 0
obj_heart.visible = false
beamsfx = caster_load("music/sfx/sfx_rainbowbeam_1.ogg")
beamsfx_a = caster_load("music/sfx/sfx_a_gigatalk.ogg")
beam_up_sfx = caster_load("music/sfx/sfx_segapower.ogg")
cutsfx = caster_load("music/sfx/sfx_cinematiccut.ogg")
p_cut = 0
p_beam = 0
p_power = 0
hit_try = 0
hit_reached = 0
timer_on = 0
turn = 0
turns = 0
part = 0
skip = false
if (skip == false)
{
    birdnoise = caster_load("music/birdnoise.ogg")
    caster_loop(birdnoise, 1, 1)
}
if (skip == true)
{
    con = -1
    with (mypart1)
        bounce = 1
    obj_borderparent.visible = true
    global.msg[0] = scr_gettext("obj_sansb_90")
    global.mnfight = 3
    global.myfight = 0
    global.faceemotion = 0
    normalfight = 1
    obj_heart.visible = true
    FL_FightingSans = 1
    caster_loop(global.batmusic, 0.95, 0.95)
}
drama = 0
mercy_death = 0
nx = 0
global.seriousbattle = 1
ossafe_ini_open("undertale.ini")
ini_f = ini_read_real("Sans", "F", 0)
intro = ini_read_real("Sans", "Intro", 0)
ini_write_real("Sans", "F", (ini_f + 1))
ossafe_ini_close()
ossafe_savedata_save()
