x = 321
y = 307
for (i = 0; i < 5; i += 1)
{
    xpos[i] = x
    ypos[i] = y
    peg_alpha[i] = 0
}
xpos[0] = (x - 50)
ypos[0] = -60
xpos[1] = x
ypos[1] = -60
xpos[2] = (x + 50)
ypos[2] = -60
xpos[3] = -60
ypos[3] = (y - 50)
xpos[4] = -60
ypos[4] = y
xpos[5] = -60
ypos[5] = (y + 50)
xpos[6] = 700
ypos[6] = (y - 50)
xpos[7] = 700
ypos[7] = y
xpos[8] = 700
ypos[8] = (y + 50)
bultimer = 0
curbullet = 0
maxbullet = 0
for (i = 0; i < 255; i += 1)
{
    bullettime[i] = 0
    bulletpos[i] = 0
    bulletspeed[i] = 0
    bullettype[i] = 0
}
type = 0
active = true
defined = 0
maxtimer = 10
darkness = 1
darkness_amount = 0
shift_timer = 0
shift_timer_max = -1
depth = 9
