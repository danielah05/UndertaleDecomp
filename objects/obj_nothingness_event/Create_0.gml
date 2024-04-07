skip = false
con = 0
alarm[0] = 18000
wind = caster_load("music/f_wind2.ogg")
caster_loop(wind, 0.8, 0.7)
obj_time.canquit = 0
mc = instance_create(-20, -20, obj_mainchara)
mc.visible = false
window_set_caption(" ")
scr_enable_screen_border(false)
