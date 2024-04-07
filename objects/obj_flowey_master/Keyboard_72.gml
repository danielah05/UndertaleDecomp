if (global.debug == true)
{
    htest += 1
    if (htest > 2)
    {
        instance_create(0, (200 + random(280)), obj_f_handgun)
        htest = 0
    }
}
