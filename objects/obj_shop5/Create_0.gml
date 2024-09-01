murder = 0
ossafe_ini_open("undertale.ini")
gm = ini_read_real("General", "Gameover", 0)
ossafe_ini_close()
if (scr_murderlv() >= MurderLevel.Lv10GladDummyKilled)
    murder = 1
instance_create(0, 0, obj_fader)
vol = 0.5
if (FL_TruePacifist == false)
{
    shopmus = caster_load("music/temshop.ogg")
    caster_loop(shopmus, vol, 1)
    if (murder == 1)
        caster_set_pitch(shopmus, 0.5)
}
menumax = 3
menu = 0
menuc[0] = 0
menuc[1] = 0
menuc[2] = 0
menuc[3] = 0
menuc[4] = 0
menuc[5] = 0
menuc[6] = 0
menuc[7] = 0
item0pic = spr_heart
item1pic = spr_heart
item2pic = spr_heart
item3pic = spr_heart
item[0] = 22
item[1] = 22
item[2] = 22
item[3] = 64
if (murder == 1)
    item[3] = 22
sell = 0
bought = 0
mainmessage = 0
itemcost[0] = 3
itemcost[1] = 1
itemcost[2] = 20
itemcost[3] = 1000
minimenuy = 120
global.typer = 24
scr_setfont(fnt_maintext)
sidemessage = 0
selling = 0
global.msc = 0
glow = 0
shx = 130
instance_create(0, 0, obj_shop5_body)
soldo = 0
global.faceemotion = 0
sellpos = 0
sellpos2 = 0
for (i = 0; i < InventorySize; i += 1)
{
    value[i] = 0
    sold[i] = 0
}
value[8] = 0
value[9] = 0
value[10] = 0
thanks = 0
joytimer = 0
s_quit = 0
specialsell = 0
c_con = 0
colleg = 0
