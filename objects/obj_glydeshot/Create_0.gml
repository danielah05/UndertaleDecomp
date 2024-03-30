siner = 0
image_xscale = 2
image_yscale = 2
aa = choose(2, -2)
direction = (300 - random(60))
speed = 7
friction = random(-0.1)
dmg = 9
if instance_exists(obj_glydeb)
    dmg = global.monsteratk[obj_glydeb.myself]
