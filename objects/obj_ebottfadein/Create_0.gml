x = 120
y = 120
timer = 0
image_speed = 0
image_xscale = 2
image_yscale = 2
image_alpha = 0
n_timer = 0
n_index = 0
n_alpha = 0
n_active = 0
offer = 0
draw_set_alpha(1)
scr_loadendsong()
caster_stop(global.endsong[7])
s8 = caster_play(global.endsong[8], 1, 1)
noise = caster_load("music/f_noise.ogg")
noise = caster_loop(noise, 0, 1)
global.inbattle = true
