for (i = 0; i < 8; i += 1)
    draw_sprite_ext(part[i], fakeanim, (x + partx[i]), (y + party[i]), 2, 2, 0, c_white, 1)
siner += 1
fakeanim += 0.1
if (moving == true)
{
    party[7] += (sin((siner / 15)) * 0.3)
    party[6] += (sin((siner / 15)) * 0.2)
    party[5] += (cos((siner / 15)) * 0.1)
    party[4] += (cos((siner / 15)) * 0.1)
    party[3] += (sin((siner / 15)) * 0.1)
    party[0] += (sin((siner / 15)) * 0.05)
}
part[7] = spr_asgoreb_head1 // 636
part[6] = spr_asgoreb_armor // 637
part[5] = spr_asgoreb_arml // 634
part[4] = spr_asgoreb_armr // 635
part[3] = spr_asgoreb_dress // 638
part[2] = spr_asgoreb_legs // 639
part[1] = spr_asgoreb_feet // 640
part[0] = spr_asgoreb_cape // 632