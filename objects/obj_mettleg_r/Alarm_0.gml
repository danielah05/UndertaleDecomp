s = (((-sp) * pi) / 2)
if (c == 0)
{
    xinit -= (sin((s / sp)) * sf)
    x = ((xinit + sprite_width) + (sin((s / sp)) * sf))
}
if (c == 1)
{
    xinit -= (cos((s / sp)) * sf)
    x = ((xinit + sprite_width) + (cos((s / sp)) * sf))
}
if (c == 2)
{
    s = ((sp * pi) / 2)
    xinit += (sin((s / sp)) * sf)
    x = ((xinit + sprite_width) + (sin((s / sp)) * sf))
    c = 0
}
visible = true
