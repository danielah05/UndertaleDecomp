global.inbattle = true
global.facing = Direction.Up
FL_AnimationIndex = 0
global.faceemotion = 0
image_speed = 0
image_xscale = 2
image_yscale = 2
doomcon = 0
shudder = 8
FL_MenuDisabled = true
obj_borderparent.visible = false
obj_fakeheart.visible = false
alarm[2] = 80
obj_fakeheart.move = 0
memx = obj_fakeheart.x
memy = obj_fakeheart.y
wind = caster_load("music/f_wind2.ogg")
caster_loop(wind, 0.8, 0.8)
vol = 0.8
global.border = 0
SCR_BORDERSETUP()
writing = 0
con = 0
flag20_laststr = -1
fader = 0
scr_enable_screen_border(false)
