if (pause == 0)
{
    if (sad == 0)
    {
        siner += 1
        timer += 1
        timer_e += 1
        bodyy = floor((sin((siner / 6)) * 2))
    }
    else
    {
        timer = 0
        timer_e = 0
        bodyy = 0
        eyey = -20
        siner += 0.2
        mouth_index += 0.25
    }
}
else
{
    siner = 0
    eyey = 0
    simer = 0
    timer_e = 0
    bodyy = 0
    mouth_index = 0
}
draw_sprite_ext(spr_migospel_wingA, 0, (x + (sin((siner / 4)) * 2)), (((y + 6) + 52) + (sin((siner / 4)) * 2)), 2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_migospel_wingA, 0, ((x + 52) - (sin((siner / 4)) * 2)), (((y + 6) + 52) + (sin((siner / 4)) * 2)), -2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_migospel_wingB, 0, (x + (sin((siner / 4)) * 2)), (((y + 16) + 56) - (sin((siner / 4)) * 2)), 2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_migospel_wingB, 0, ((x + 52) - (sin((siner / 4)) * 2)), (((y + 16) + 56) - (sin((siner / 4)) * 2)), -2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_migospel_leg, 0, x, (y + 100), 2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_migospel_leg, 0, (x + 50), (y + 100), -2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_migospel_body, 0, x, (y + bodyy), 2, 2, 0, c_white, image_alpha)
if (pause == 0)
{
    if (sad == 0)
        draw_sprite_ext(spr_migospel_eye, eyey, (x + 6), floor((((y + 50) + bodyy) + eyey)), 2, 2, 0, c_white, image_alpha)
    if (sad == 1)
        draw_sprite_ext(spr_migospel_eye, mouth_index, (x + 6), floor((((y + 50) + bodyy) + eyey)), 2, 2, 0, c_white, image_alpha)
    if (sad == 0)
        draw_sprite_ext(spr_migospel_mouthA, floor(mouth_index), (x + 8), ((y + 66) + bodyy), 2, 2, 0, c_white, image_alpha)
    if (sad == 1)
        draw_sprite_ext(spr_migospel_mouthB, 0, (x + 8), ((y + 66) + bodyy), 2, 2, 0, c_white, image_alpha)
}
if (pause == 1)
{
    draw_sprite_ext(spr_migospel_eyeB, eyey, (x + 6), floor((((y + 50) + bodyy) + eyey)), 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_migospel_mouthC, 0, (x + 8), ((y + 66) + bodyy), 2, 2, 0, c_white, image_alpha)
}
if (timer >= 40 && timer <= 50)
    mouth_index += 0.5
if (timer == 51)
{
    timer = 0
    mouth_index = 0
}
if (sad == 0)
{
    if (timer_e > 90 && timer_e <= 110)
        eyey -= 0.8
    if (timer_e > 150 && timer_e <= 170)
        eyey += 0.8
    if (timer_e == 180)
        timer_e = 0
}
