dirbuffer -= 1
if (con == 0)
{
    if keyboard_check_pressed(vk_left)
        coord -= 1
    if (coord < mincoord)
        coord = maxcoord
    if keyboard_check_pressed(vk_right)
        coord += 1
    if (coord > maxcoord)
        coord = mincoord
    if (keyboard_check(vk_up) && coord < 4 && dirbuffer < 0)
    {
        dirbuffer = 4
        digit[coord] += 1
        if (digit[coord] > 9)
            digit[coord] = 0
    }
    if (keyboard_check(vk_down) && coord < 4 && dirbuffer < 0)
    {
        dirbuffer = 4
        digit[coord] -= 1
        if (digit[coord] < 0)
            digit[coord] = 9
    }
    total = ((((digit[0] * 1000) + (digit[1] * 100)) + (digit[2] * 10)) + digit[3])
    if (total > coin)
    {
        for (i = 0; i < 4; i += 1)
            digit[i] = idealdigit[i]
        total = coin
    }
    if control_check_pressed(1)
        con = 10
    else if control_check_pressed(0)
    {
        if (coord == 4)
            con = 20
        if (coord == 5)
            con = 10
    }
}
if (con == 20)
{
    if (total > 0)
        snd_play(snd_buyitem)
    if (total > 0 && hasDonated == 0)
    {
        hasDonated = 1
        if ossafe_file_exists("undertale.ini")
        {
            ossafe_ini_open("undertale.ini")
            ini_write_real("Dogshrine", "Donated", hasDonated)
            ossafe_ini_close()
        }
    }
    nowdonation = FL_DogShrineXboxDonatedCoins
    threshold = 0
    FL_DogShrineXboxCoins -= total
    FL_DogShrineXboxDonatedCoins += total
    th[0] = 0
    th[1] = 10
    th[2] = 25
    th[3] = 50
    th[4] = 100
    th[5] = 200
    th[6] = 350
    th[7] = 500
    for (i = 1; i < 8; i += 1)
    {
        if (nowdonation >= th[(i - 1)] && nowdonation < th[i] && FL_DogShrineXboxDonatedCoins >= th[i])
            threshold = 1
    }
    if (global.osflavor == 6)
    {
        if (FL_DogShrineXboxDonatedCoins >= 10)
            trophy_unlock("dognation_1")
        if (FL_DogShrineXboxDonatedCoins >= 25)
            trophy_unlock("dognation_2")
        if (FL_DogShrineXboxDonatedCoins >= 50)
            trophy_unlock("dognation_3")
        if (FL_DogShrineXboxDonatedCoins >= 100)
            trophy_unlock("dognation_4")
        if (FL_DogShrineXboxDonatedCoins >= 200)
            trophy_unlock("dognation_5")
        if (FL_DogShrineXboxDonatedCoins >= 350)
            trophy_unlock("dognation_6")
        if (FL_DogShrineXboxDonatedCoins >= 500)
            trophy_unlock("dognation_x")
    }
    if (FL_DogShrineXboxDonatedCoins > 500)
        con = 30
    else if (threshold == 1)
        con = 31
    else
    {
        global.interact = 0
        instance_destroy()
    }
}
if (con == 10 && (!instance_exists(obj_dialoguer)))
{
    global.interact = 0
    global.facing = 0
    instance_destroy()
}
if (con == 30)
{
    excessgold = 0
    addgold = (FL_DogShrineXboxDonatedCoins - 500)
    FL_DogShrineXboxDonatedCoins = 500
    global.gold += addgold
    if (global.gold >= 9999)
    {
        global.gold = 9999
        excessgold = 1
    }
    global.msg[0] = ((scr_gettext("obj_ds3_numberpicker_7") + string(addgold)) + scr_gettext("obj_ds3_numberpicker_8"))
    if (excessgold == 1)
        global.msg[0] = scr_gettext("obj_ds3_numberpicker_9")
    draw = 0
    scr_regulartext()
    con = 10
}
if (con == 31)
{
    draw = 0
    global.msg[0] = scr_gettext("obj_ds3_numberpicker_10")
    scr_regulartext()
    con = 10
}
