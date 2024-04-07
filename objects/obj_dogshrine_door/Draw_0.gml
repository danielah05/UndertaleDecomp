draw_sprite(spr_ds2_switchdoor, 0, (((x + door1x) + random(rattle)) - random(rattle)), ((y + random(rattle)) - random(rattle)))
draw_sprite(spr_ds2_switchdoor, 1, ((((x + door2x) + 24) + random(rattle)) - random(rattle)), ((y + random(rattle)) - random(rattle)))
if (locked == true)
    draw_sprite(spr_ds2_doorlock, 0, (((x + 24) + random(rattle)) - random(rattle)), (((y + 20) + random(rattle)) - random(rattle)))
if (rattle > 0)
    rattle -= 0.5
