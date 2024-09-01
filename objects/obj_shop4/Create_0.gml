murder = 0
if (scr_murderlv() >= MurderLevel.Lv12UndyneEXKilled)
{
    murder = 1
    if (FL_BurgerPantsStatus < BurgerPantsStatus.Talked)
        FL_BurgerPantsStatus = BurgerPantsStatus.Talked
}
instance_create(0, 0, obj_fader)
vol = 0.8
if (FL_TruePacifist == false)
{
    shopmus = caster_load("music/shop.ogg")
    caster_loop(shopmus, vol, 0.7)
    if (murder == 1)
        caster_set_pitch(shopmus, 0.4)
}
menumax = 3
menu = 0
menuc[0] = 0
menuc[1] = 0
menuc[2] = 0
menuc[3] = 0
menuc[4] = 0
item0pic = spr_heart
item1pic = spr_heart
item2pic = spr_heart
item3pic = spr_heart
item[0] = 42
item[1] = 40
item[2] = 43
item[3] = 61
sell = 0
bought = 0
mainmessage = 0
itemcost[0] = 60
itemcost[1] = 120
itemcost[2] = 300
itemcost[3] = 500
minimenuy = 120
global.typer = 23
scr_setfont(fnt_maintext)
sidemessage = 0
selling = 0
global.msc = 0
glow = 0
shx = 100
instance_create(shx, 13, obj_burgerpants_body)
soldo = 0
global.faceemotion = 0
