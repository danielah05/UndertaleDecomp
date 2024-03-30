sam = sin((siner / 5))
sim = cos((siner / 5))
som = sin((siner / 2.5))
draw_sprite_ext(spr_wizard_boot, 0, (((offx + x) - 23) - (sin((siner / 5)) * 5)), ((y + 80) - (sin((siner / 5)) * 6)), 2, 2, (-40 - (sin((siner / 5)) * 10)), c_white, 1)
draw_sprite_ext(spr_wizard_boot, 0, (((offx + x) + 19) + (sin((siner / 5)) * 5)), ((y + 80) - (sin((siner / 5)) * 6)), -2, 2, (40 + (sin((siner / 5)) * 10)), c_white, 1)
draw_sprite_ext(spr_wizard_lapel, 0, ((offx + x) - 2), ((y + 52) + sam), 2, 2, ((-sam) * 10), c_white, 1)
draw_sprite_ext(spr_wizard_lapel, 0, ((offx + x) - 2), ((y + 52) + sam), -2, 2, (sam * 10), c_white, 1)
draw_sprite_ext(spr_wizard_dress, 0, ((offx + x) - 34), ((y + 52) + sam), 2, (1.8 - (sam * 0.2)), 0, c_white, 1)
if (pause == 0)
    draw_sprite_ext(spr_wizard_head, 0, (((offx + x) - 6) + sam), ((y + 2) + (sam * 8)), 2, 2, 0, c_white, 1)
if (pause == 1)
    draw_sprite_ext(spr_wizard_headhurt, 0, (((offx + x) - 6) + sam), ((y + 2) + (sam * 8)), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_wizard_hat, 0, (((offx + x) + 2) + sim), ((y + 4) + (sam * 10)), 2, 2, 0, c_white, 1)
exist += 1
if (exist < 10)
{
    if (pause == 0)
        orbspr = spr_wizard_orb
    if (pause == 1)
        orbspr = spr_wizard_orbhurt
    draw_sprite_ext(orbspr, (siner / 3), ((offx + x) - 44), ((y + 16) + (som * 2)), -2, -2, 0, c_white, 1)
    draw_sprite_ext(orbspr, (siner / 3), ((offx + x) + 70), ((y + 6) + (som * 5)), -2, -2, 0, c_white, 1)
}
if (exist >= 10)
{
    if (pause == 0)
        orbspr = spr_wizard_orb
    if (pause == 1)
        orbspr = spr_wizard_orbhurt
    if (parent.stare1 == 0)
        draw_sprite_ext(orbspr, (siner / 3), ((offx + x) - 44), ((y + 16) + (som * 2)), -2, -2, 0, c_white, 1)
    else
        draw_sprite_ext(orbspr, (siner / exist), ((offx + x) - 44), ((y + 16) + ((som * 2) / exist)), -2, -2, 0, c_white, 1)
    if (parent.stare2 == 0)
        draw_sprite_ext(orbspr, (siner / 3), ((offx + x) + 70), ((y + 6) + (som * 5)), -2, -2, 0, c_white, 1)
    else
        draw_sprite_ext(orbspr, (siner / exist), ((offx + x) + 70), ((y + 6) + ((som * 5) / exist)), -2, -2, 0, c_white, 1)
}
siner += 1
if (pause == 1)
{
    alarm[0] += 1
    siner = 0
    x = (parent.x + 2)
}
