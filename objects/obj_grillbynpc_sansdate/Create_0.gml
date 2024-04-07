dsprite = spr_sans_d
usprite = spr_sans_u
lsprite = spr_sans_l
rsprite = spr_sans_r
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
myinteract = 0
facing = Direction.Down
direction = 90
talkedto = 0
image_speed = 0
con = 0
if (FL_SansDated != 1)
    instance_destroy()
else
{
    con = 1
    visible = true
    rimshot = caster_load("music/rimshot.ogg")
    whoopee = caster_load("music/whoopee.ogg")
    mystery = caster_load("music/mysteriousroom2.ogg")
}
scr_depth()
burg = 0
curvol = 1
counter = scr_marker(92, 65, spr_grillbycounter)
counter.depth = 199990
