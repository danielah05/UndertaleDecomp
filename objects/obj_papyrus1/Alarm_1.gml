if (look == 27)
    conversation = 5
if (look == 26)
{
    papyrus.sprite_index = papyrus.rtsprite
    sans.sprite_index = sans.rtsprite
    alarm[1] = 30
    look += 1
}
if (look == 25)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 50
    look += 1
}
if (look == 24)
{
    pp = floor(random(4))
    ss = floor(random(4))
    if (pp == 0)
        papyrus.sprite_index = papyrus.dsprite
    if (pp == 1)
        papyrus.sprite_index = papyrus.rsprite
    if (pp == 2)
        papyrus.sprite_index = papyrus.usprite
    if (pp == 3)
        papyrus.sprite_index = papyrus.lsprite
    if (ss == 0)
        sans.sprite_index = sans.dsprite
    if (ss == 1)
        sans.sprite_index = sans.rsprite
    if (ss == 2)
        sans.sprite_index = sans.usprite
    if (ss == 3)
        sans.sprite_index = sans.lsprite
    alarm[1] = 1
    spinagain += 1
    if (spinagain > 37)
        look = 25
}
if (look == 23)
{
    if (papyrus.sprite_index == papyrus.lsprite)
        papyrus.sprite_index = papyrus.usprite
    else
        papyrus.sprite_index = papyrus.lsprite
    if (sans.sprite_index == sans.lsprite)
        sans.sprite_index = sans.dsprite
    else
        sans.sprite_index = sans.lsprite
    alarm[1] = 2
    spinagain += 1
    if (spinagain > 5)
    {
        spinagain = 0
        look = 24
    }
}
if (look == 22)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 2
    look += 1
}
if (look == 21)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 2
    look += 1
}
if (look == 20)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 2
    look += 1
}
if (look == 19)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 2
    look += 1
}
if (look == 18)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 2
    look += 1
}
if (look == 17)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 2
    look += 1
}
if (look == 16)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 2
    look += 1
}
if (look == 15)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 2
    look += 1
}
if (look == 14)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 2
    look += 1
}
if (look == 13)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 3
    look += 1
}
if (look == 12)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 4
    look += 1
}
if (look == 11)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 5
    look += 1
}
if (look == 10)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 6
    look += 1
}
if (look == 9)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 7
    look += 1
}
if (look == 8)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 10
    look += 1
}
if (look == 7)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 12
    look += 1
}
if (look == 6)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 12
    look += 1
}
if (look == 5)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 16
    look = 6
}
if (look == 4)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 16
    look = 5
}
if (look == 3)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 24
    look = 4
}
if (look == 2)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 24
    look = 3
}
if (look == 1)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.dsprite
    alarm[1] = 30
    look = 2
}
if (look == 0)
{
    papyrus.sprite_index = papyrus.usprite
    sans.sprite_index = sans.lsprite
    alarm[1] = 30
    look = 1
}
