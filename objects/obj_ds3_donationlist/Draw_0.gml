draw_set_color(c_white)
var xWhiteStart = (global.language == "en" ? 50 : 30)
var xWhiteEnd = (global.language == "en" ? 270 : 290)
draw_rectangle(xWhiteStart, 8, xWhiteEnd, 232, false)
draw_set_color(c_black)
var xBlackStart = (global.language == "en" ? 52 : 32)
var xBlackEnd = (global.language == "en" ? 268 : 288)
draw_rectangle(xBlackStart, 10, xBlackEnd, 230, false)
draw_set_color(c_white)
scr_setfont(fnt_maintext)
var leftColXText = (global.language == "en" ? 70 : 50)
var rightColXText = (global.language == "en" ? 158 : 138)
var headerYPos = (global.language == "en" ? 24 : 20)
draw_text(leftColXText, headerYPos, string_hash_to_newline(scr_gettext("obj_ds3_donationlist_0")))
draw_text(rightColXText, headerYPos, string_hash_to_newline(scr_gettext("obj_ds3_donationlist_1")))
th[0] = 10
th[1] = 25
th[2] = 50
th[3] = 100
th[4] = 200
th[5] = 350
th[6] = 500
var conditionsYPos = (global.language == "en" ? 40 : 36)
var conditionsOffset = (global.language == "en" ? 13 : 14)
for (i = 0; i < 7; i += 1)
{
    draw_set_color(c_white)
    if (FL_DogShrineXboxDonatedCoins >= th[i])
        draw_set_color(c_yellow)
    draw_text(leftColXText, (conditionsYPos + (conditionsOffset * i)), string_hash_to_newline(condition[i]))
    if (i == 6)
        draw_text((rightColXText + 2), (conditionsYPos + (conditionsOffset * i)), string_hash_to_newline(prize[i]))
    else
        draw_text(rightColXText, (conditionsYPos + (conditionsOffset * i)), string_hash_to_newline(prize[i]))
}
var conditionsSlotYPos = (global.language == "en" ? 53 : 47)
for (i = 7; i < 11; i += 1)
{
    draw_set_color(c_white)
    if (global.flag[((292 + i) - 7)] == 1) // FL_DogShrineXboxX3Cherries + i
        draw_set_color(c_yellow)
    if (global.language == "en")
        draw_text(leftColXText, (conditionsSlotYPos + (conditionsOffset * i)), string_hash_to_newline(condition[i]))
    else
    {
        draw_set_halign(fa_right)
        draw_text(120, (conditionsSlotYPos + (conditionsOffset * i)), string_hash_to_newline(condition[i]))
        draw_set_halign(fa_left)
    }
    if (i == 8 || i == 10)
        draw_text((rightColXText + 2), (conditionsSlotYPos + (conditionsOffset * i)), string_hash_to_newline(prize[i]))
    else
        draw_text(rightColXText, (conditionsSlotYPos + (conditionsOffset * i)), string_hash_to_newline(prize[i]))
}
if (global.language == "en")
{
    if (FL_DogShrineXboxDonatedCoins != 1)
        laststring = (((scr_gettext("obj_ds3_donationlist_2") + string(FL_DogShrineXboxDonatedCoins)) + " ") + scr_gettext("obj_ds3_donationlist_3"))
    else
        laststring = ((scr_gettext("obj_ds3_donationlist_2") + string(FL_DogShrineXboxDonatedCoins)) + " Coin")
}
else
    laststring = ((scr_gettext("obj_ds3_donationlist_2") + string(FL_DogShrineXboxDonatedCoins)) + scr_gettext("obj_ds3_donationlist_3"))
if (FL_DogShrineXboxDonatedCoins >= 500)
    laststring = scr_gettext("obj_ds3_donationlist_4")
var lastLineText = (global.language == "en" ? 72 : 52)
var lastLineYText = (global.language == "en" ? 210 : 206)
draw_text(lastLineText, lastLineYText, string_hash_to_newline(laststring))
