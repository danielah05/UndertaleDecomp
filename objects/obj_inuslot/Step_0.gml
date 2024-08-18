sloton = 0
buffer2 -= 1
if (myinteract == 1)
{
    if (buffer2 < 0)
    {
        global.interact = 1
        if (FL_DogShrineXboxCoins > 0)
        {
            con = 0
            sloton = 1
            myinteract = 0
        }
        else
        {
            alarm[0] = 1
            myinteract = 2
        }
    }
    else
        myinteract = 0
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == 0)
    {
        global.interact = 0
        myinteract = 0
    }
}
buffer -= 1
if (con == 0 && sloton == 1)
{
    if (con == 0)
    {
        con = 1
        selected = false
        drawmessage = 0
        flashtimer = 0
        bonustimer = 0
        buffer = 1
        FL_DogShrineXboxCoins -= 1
        slotconfirm[0] = 0
        slotconfirm[1] = 0
        slotconfirm[2] = 0
        audio_play_sound(snd_slot_start, 50, false)
    }
}
if (con == 1)
{
    for (i = 0; i < 3; i += 1)
    {
        if (slotconfirm[i] == 0)
        {
            if (slotyspeed[i] < ((2 + i) * speedfactor))
                slotyspeed[i] += 0.4
        }
    }
    if (control_check_pressed(0) && buffer <= 0)
    {
        audio_play_sound(snd_slot_set, 50, false)
        slotconfirm[selected] = 1
        selected += 1
        if (selected >= 3)
            con = 2
    }
}
if (con == 2)
{
    won = 0
    oshibonus = 0
    bonustimer = 30
    if (slot[0, (slotno[0] + 2)] == slot[1, (slotno[1] + 2)])
    {
        won = 1
        message = bonusmessage[8]
        bonustimer = 1
    }
    if (slot[0, (slotno[0] + 2)] == 1)
    {
        won = 2
        message = bonusmessage[0]
        bonustimer = 1
    }
    if (slot[0, (slotno[0] + 2)] == 1 && slot[1, (slotno[1] + 2)] == 1)
    {
        won = 5
        message = bonusmessage[1]
        bonustimer = 1
    }
    if (missdog == 1 && slot[2, (slotno[2] + 2)] == 6)
    {
        oshibonus = 1
        message = bonusmessage[9]
    }
    if (slot[0, (slotno[0] + 2)] == 1 && slot[1, (slotno[1] + 2)] == 1 && slot[2, (slotno[2] + 2)] == 1)
    {
        won = 10
        message = bonusmessage[2]
        FL_DogShrineXboxX3Cherries = 1
    }
    if (slot[0, (slotno[0] + 2)] == 2 && slot[1, (slotno[1] + 2)] == 2 && slot[2, (slotno[2] + 2)] == 2)
    {
        won = 7
        speedfactor = 0.42
        message = bonusmessage[3]
    }
    if (slot[0, (slotno[0] + 2)] == 3 && slot[1, (slotno[1] + 2)] == 3 && slot[2, (slotno[2] + 2)] == 3)
    {
        won = 20
        message = bonusmessage[4]
        FL_DogShrineXboxX3Ghosts = 1
    }
    if (slot[0, (slotno[0] + 2)] == 4 && slot[1, (slotno[1] + 2)] == 4 && slot[2, (slotno[2] + 2)] == 4)
    {
        won = 30
        message = bonusmessage[5]
        FL_DogShrineXboxX3Bones = 1
    }
    if (slot[0, (slotno[0] + 2)] == 5 && slot[1, (slotno[1] + 2)] == 5 && slot[2, (slotno[2] + 2)] == 5)
    {
        won = 75
        message = bonusmessage[6]
        FL_DogShrineXboxX3Dogs = 1
    }
    if (slot[0, (slotno[0] + 2)] == 6 && slot[1, (slotno[1] + 2)] == 6 && slot[2, (slotno[2] + 2)] == 6)
    {
        won = 150
        message = bonusmessage[7]
        bonustimer = 60
    }
    if (oshibonus == 1)
        won += 20
    if (slot[0, (slotno[0] + 2)] == 6 && slot[1, (slotno[1] + 2)] == 6 && slot[2, (slotno[2] + 2)] != 6)
        missdog = 1
    else
        missdog = 0
    if (won >= 10)
    {
        speedfactor = 1
        if (won >= 150)
            speedfactor = 1.5
    }
    if (won == 0)
    {
        if (speedfactor >= 0.6)
            speedfactor -= 0.01
        if (speedfactor >= 1)
            speedfactor -= 0.05
        if (speedfactor <= 0.6)
            speedfactor += 0.02
    }
    flashtimer = 0
    if (won > 0)
    {
        fuzzfactor = 0
        if (FL_DogShrineXboxDonatedCoins >= 500)
        {
            fuzzfactor = (1 + floor((FL_DogShrineXboxCoins / 250)))
            if (fuzzfactor > 10)
                fuzzfactor = 10
        }
        drawmessage = 1
        con = 3
        if (won >= 10 && won < 149)
        {
            bonustimer = 32
            audio_play_sound(snd_slot_win, 50, false)
        }
        if (won >= 150)
        {
            bonustimer = 160
            caster_pause(global.currentsong)
            audio_play_sound(snd_slot_bigiwn, 50, false)
        }
    }
    else
        con = 4
}
if (con == 3)
{
    message2 = (scr_gettext("obj_inuslot_3") + string(won))
    flashtimer += 1
    if (flashtimer >= 8)
    {
        if (drawmessage != 2)
            drawmessage = 2
        else
            drawmessage = 1
        flashtimer = 0
    }
    bonustimer -= 1
    if (bonustimer <= 0)
    {
        drawmessage = 1
        con = 4
    }
}
if (con == 4)
{
    if (won > 0)
    {
        audio_stop_sound(snd_slot_get)
        audio_play_sound(snd_slot_get, 50, false)
        if (FL_DogShrineXboxCoins < 2500)
            FL_DogShrineXboxCoins += 1
        won -= 1
        if (hd == 1)
        {
            repeat fuzzfactor
                instance_create((x + (sprite_width / 2)), (y + (sprite_width / 2)), obj_ds3_particle)
        }
    }
    else
    {
        if (FL_DogShrineXboxX3Cherries == 1)
            trophy_unlock("dog_cherry")
        if (FL_DogShrineXboxX3Ghosts == 1)
            trophy_unlock("dog_ghosts")
        if (FL_DogShrineXboxX3Bones == 1)
            trophy_unlock("dog_bones")
        if (FL_DogShrineXboxX3Dogs == 1)
            trophy_unlock("dog_spell")
        caster_resume(global.currentsong)
        global.interact = 0
        con = 0
        buffer2 = 2
    }
}
for (i = 0; i < 3; i += 1)
{
    sloty[i] += slotyspeed[i]
    if (sloty[i] >= 15)
    {
        if (slotconfirm[i] == 0)
        {
            slotno[i] += 1
            sloty[i] -= 15
            if (slotno[i] >= slotmax[i])
                slotno[i] = 0
        }
        else
        {
            sloty[i] = 15
            slotyspeed[i] = 0
        }
    }
}
