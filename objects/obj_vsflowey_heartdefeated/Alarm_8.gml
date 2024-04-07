alarm[5] = 1
gm1 = caster_loop(gmusic, 0.45, 1)
caster_set_panning(gm1, 0.25)
gm2 = caster_loop(gmusic, 0.45, 1)
caster_set_panning(gm2, 0.5)
gm3 = caster_loop(gmusic, 0.45, 1)
caster_set_panning(gm3, 0.75)
con = 6
str = scr_gettext("flowey_haha")
str += ("#" + str)
alarm[6] = 190
snd_play(snd_floweylaugh)
