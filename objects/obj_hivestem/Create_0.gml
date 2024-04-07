dsprite = spr_temmie_l
usprite = spr_temmie_r
lsprite = spr_temmie_l
rsprite = spr_temmie_r
dtsprite = spr_temmie_lt
utsprite = spr_temmie_rt
ltsprite = spr_temmie_lt
rtsprite = spr_temmie_rt
myinteract = 0
facing = Direction.Down
direction = 180
talkedto = 0
image_speed = 0
if (scr_murderlv() >= 10)
    instance_destroy()
if (FL_TalkedToAllergyTem == 1)
    sprite_index = spr_temmie_hivetalk
con = 0
