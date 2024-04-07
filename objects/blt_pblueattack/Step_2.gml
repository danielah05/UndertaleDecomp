if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
if (x < (global.idealborder[0] - 40))
    instance_destroy()
global.turntimer += 1
