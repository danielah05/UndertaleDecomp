alarm[0] = 5
global.faceemotion = 1
event_user(0)
for (i = 0; i < 4; i += 1)
{
    partx[i] += (-20 + random(40))
    party[i] += (-10 + random(20))
    partrot[i] += (-90 + random(180))
}
mode = 5
dingus = 0
