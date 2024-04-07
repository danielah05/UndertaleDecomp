x = 315
y = 50
pause = 0
siner = 0
rely = 0
relx = 0
headrot = 0
armrot_l = 0
armrot_r = 0
torsorot = 0
alarm[0] = 1
aimage = 0
normal = 1
startx = x
starty = y
starcon = 0
type = 0
bladecon = 0
specialarm = 0
arm_alpha = 1
heady = 0
headx = 0
guncon = 0
gonercon = 0
s_s = 0
global.faceemotion = 0
shrug = 0
shrug_x = 0
aligncon = 1
specialnormal = 1
n_siner = 0
cr = caster_load("music/create.ogg")
powersfx = caster_load("music/sfx/sfx_spellcast.ogg")
sn = 0
with (obj_battlebg)
    instance_destroy()
if (FL_ButItRefused > 0 && FL_TruePacifist == false)
{
    specialnormal = 0
    aligncon = 0
}
darker = 0
darker_x = 0
u_gen = 0
h_mode = 0
transform = 0
stetch = 0
if (FL_ButItRefused > 0)
    aimage = 1
