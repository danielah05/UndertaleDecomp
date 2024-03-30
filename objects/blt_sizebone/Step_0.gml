if (drawn == 1 && active == true)
{
    if (y <= (ystart - oscmax) || y >= (ystart - oscmin))
        osc = (-osc)
    y += osc
}
