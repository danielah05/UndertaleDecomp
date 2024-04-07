anim = 0
type = 0
if (room == room_truelab_bluelever)
    type = 1
if (room == room_truelab_greenlever)
    type = 2
if (room == room_truelab_tv)
    type = 3
red = 0
yel = 0
gre = 0
blu = 0
myinteract = 0
if (FL_MemoryHeadStatus == 3)
    red = 1
if (FL_SnowyAmalgamEvent == 3)
    blu = 1
if (FL_ShowerCurtainAmalgamEvent == 3)
    gre = 1
if (FL_BedAmalgamEvent == 3)
    yel = 1
