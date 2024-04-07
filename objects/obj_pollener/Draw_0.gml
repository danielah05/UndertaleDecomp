draw_set_circle_precision(0)
draw_set_color(c_yellow)
for (i = 0; i < 100; i += 1)
{
    pollenalpha[i] += 0.03
    truepollenalpha[i] = pollenalpha[i]
    if (pollenalpha[i] >= 2)
        truepollenalpha[i] = (4 - pollenalpha[i])
    pollenx[i] += ((pollenhspeed[i] * truepollenalpha[i]) / 4)
    polleny[i] += ((pollenvspeed[i] * truepollenalpha[i]) / 4)
    if (truepollenalpha[i] <= 0)
    {
        pollenx[i] = random(room_width)
        polleny[i] = random(room_height)
        pollensize[i] = (random(3) + 1)
        pollenhspeed[i] = (random(2) - 1)
        pollenvspeed[i] = (random(2) - 1)
        pollenalpha[i] = 0
    }
    draw_set_alpha(truepollenalpha[i])
    draw_circle(pollenx[i], polleny[i], pollensize[i], 0)
}
draw_set_alpha(1)
