if (i == 0)
    i = 1
else
    i = 0
if (apparenthp > (actualhp - dmg))
    apparenthp -= (round((dmg / 20)) + 2)
if (negative == 0)
{
    if (apparenthp < 0)
        apparenthp = 0
}
alarm[0] = 2
