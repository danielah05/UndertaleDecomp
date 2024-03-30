alarm[10] = 15
if (con > 10)
{
    ql = 0
    if ((mainmove - lastmove) > 10)
        ql += 1
    franto = (abs((obj_mainchara.x - lastx)) + abs((obj_mainchara.y - lasty)))
    if (franto < 30 && franto > 3)
        ql += 1
    if (franto > 38)
        unfrantic += 1
    lastx = obj_mainchara.x
    lasty = obj_mainchara.y
    if (ql == 2)
        frantic += 1
    lastmove = mainmove
}
