siner += 1
if (facego == 1)
    f_siner += 1
if (pause == 0)
{
    draw_sprite_ext(spr_moldessa_stem, 0, x, (y + 114), (2 + (sin((siner / 7)) * 0.1)), (2 - (sin((siner / 7)) * 0.1)), 0, c_white, 1)
    draw_sprite_ext(spr_moldessa_face, face[0], ((x + (sin((f_siner / 16)) * 13)) + (sin((siner / 6)) * 1)), (((y + 56) + (cos((f_siner / 16)) * 18)) + (cos((siner / 6)) * 1)), 2, 2, ((f_siner * 3) + (sin((siner / 6)) * 4)), c_white, 1)
    draw_sprite_ext(spr_moldessa_face, face[1], ((x + (sin(((f_siner + 36) / 16)) * 13)) + (sin((siner / 6)) * 1)), (((y + 56) + (cos(((f_siner + 36) / 16)) * 18)) + (cos((siner / 6)) * 1)), 2, 2, (((f_siner * 3) + 180) + (sin((siner / 6)) * 4)), c_white, 1)
    draw_sprite_ext(spr_moldessa_face, face[2], ((x + (sin(((f_siner + 65) / 16)) * 13)) + (sin((siner / 6)) * 1)), (((y + 56) + (cos(((f_siner + 65) / 16)) * 18)) + (cos((siner / 6)) * 1)), 2, 2, (((f_siner * 3) + 180) + (sin((siner / 6)) * 4)), c_white, 1)
    draw_sprite_ext(spr_moldessa_headthing, 0, x, ((y - 4) + (sin((siner / 7)) * 2)), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_moldessa_arm, 0, (x - 12), y, 2, 2, (-5 + (sin((siner / 7)) * 5)), c_white, 1)
    draw_sprite_ext(spr_moldessa_arm, 0, (x + 14), y, -2, 2, (5 - (sin((siner / 7)) * 5)), c_white, 1)
}
else
{
    draw_sprite_ext(spr_moldessa_hurt, floor((siner / 4)), (x - 48), (y - 2), 1, 1, 0, c_white, 1)
    face[0] = floor(random(9))
    face[1] = floor(random(9))
    face[2] = floor(random(9))
}
