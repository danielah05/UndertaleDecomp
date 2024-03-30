if (global.interact == 0 && obj_bouncetilecontoller.bounce == 0 && con == 0)
{
    obj_bouncetilecontoller.bounce = 1
    global.phasing = 1
    con = 1
    obj_mainchara.image_speed = 0.334
    alarm[4] = 5
    global.interact = 1
    obj_mainchara.ideal = id
    with (obj_mainchara)
        scr_getideal(ideal.x, (ideal.y - 15))
}
if (global.interact == 0 && obj_bouncetilecontoller.bounce == 2 && con == 0)
{
    obj_bouncetilecontoller.bounce = 1
    global.phasing = 1
    con = 4
    obj_mainchara.image_speed = 0.334
    global.interact = 1
    obj_mainchara.ideal = id
}
obj_bouncetilecontoller.btime = 3
