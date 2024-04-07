if (qno == 0)
    sprite_index = spr_abutton
if (qno == 1)
    sprite_index = spr_bbutton
if (qno == 2)
    sprite_index = spr_cbutton
if (qno == 3)
    sprite_index = spr_dbutton
visible = true
ano = qno
if (obj_questionasker.correct == 5)
    ano = 5
obj_heart.movement = 1
