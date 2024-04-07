sing += 1
gm = instance_create((x + 40), 20, obj_songwriter)
gm.gggg = 1
gm.myfont = fnt_maintext
if (offsing == 1)
    gm.y = 21
var textid = ("mett_opera2_" + string(sing))
gm.sting = scr_gettext(textid)
if (global.language != "en")
{
    gm.can_off = 0
    gm.alarm[3] = (4 + (2 * strlen(ds_map_find_value(global.text_data_en, textid))))
}
if (offsing == 1)
    offsing = 0
else
    offsing = 1
if (sing == 1)
    alarm[0] = 75
