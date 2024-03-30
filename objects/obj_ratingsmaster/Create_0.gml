global.ratings = 4000
for (i = 0; i < 6; i += 1)
{
    rq[i] = ""
    rq_v[i] = 0
    rq_s[i] = 900
}
curtype = 0
thisi = floor(random(8))
for (i = 0; i < 10; i += 1)
{
    rp[i] = (4000 - random(500))
    if (i == thisi)
        rp[i] = global.ratings
}
alarm[5] = 6
accu = 0
for (i = 0; i < 15; i += 1)
    typeuse[i] = 0
boastmode = 0
siner = 0
heel = 0
checkhp = global.hp
thisarmor = global.armor
for (i = 0; i < 9; i += 1)
    armor_worn[i] = 0
event_user(1)
novel_armor = 0
timeloss = 0
o_o = 0
o_ob = 0
essay = 0
active = true
