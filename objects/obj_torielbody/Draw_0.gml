image_xscale = 2
image_yscale = 2
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (shock == 0)
{
    facespr = spr_face_torielhappytalk
    if (global.faceemotion == 0)
        facespr = spr_face_torielhappytalk
    if (global.faceemotion == 1)
        facespr = spr_face_torieltalk
    if (global.faceemotion == 2)
        facespr = spr_face_torielcold
    if (global.faceemotion == 3)
        facespr = spr_face_torielembarrassed
    if (global.faceemotion == 4)
        facespr = spr_face_torieltalkside
    if (global.faceemotion == 5)
        facespr = spr_face_torielmad
    if (global.faceemotion == 6)
        facespr = spr_face_torielhappy_left
    if (global.faceemotion == 7)
        facespr = spr_face_torielhappy_2
    if (global.faceemotion == 9)
        facespr = spr_face_torielhappy_down
    if (global.faceemotion == 10)
        facespr = spr_face_torielsigh
    if (global.faceemotion == 11)
        facespr = spr_face_toriel_noasgore
    if (global.faceemotion == 12)
        facespr = spr_face_toriel_laughleft
    if (global.faceemotion == 13)
        facespr = spr_face_torielup
    if (global.faceemotion == 14)
        facespr = spr_face_torielhappy_right
    if (global.faceemotion == 15)
        facespr = spr_face_toriel_noface
    draw_sprite_ext(facespr, 0, (x + 40), (y - 52), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
if (shock == 1)
    draw_sprite_ext(spr_face_torieldie, 0, (x + 40), (y - 52), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
