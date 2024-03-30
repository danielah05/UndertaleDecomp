direction += turn
if (sum == 1)
    turn += 0.05
if (sum > 1)
    turn += 0.01
if (backwards == 1)
    turn -= 0.1
if (sum == 1)
{
    siner += 1
    x += (sin((siner / 6)) * 1)
}
