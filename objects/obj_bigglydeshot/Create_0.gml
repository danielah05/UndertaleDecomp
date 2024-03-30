siner = 0
image_alpha = 0.5
image_xscale = 0
image_yscale = 0
aa = choose(2, -2)
direction = (300 - random(60))
alarm[8] = 20
breaking = false
talpha = 0
tab = 0
phrase = scr_gettext(("obj_bigglydeshot_word_" + string(floor(random(7)))))
dmg = 9
if instance_exists(obj_glydeb)
    dmg = global.monsteratk[obj_glydeb.myself]
