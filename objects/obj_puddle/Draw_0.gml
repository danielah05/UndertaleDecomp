if instance_exists(obj_mainchara)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom)
    ndtry = 0
    if instance_exists(obj_mkid_actor)
    {
        mm = obj_mkid_actor
        sprito2 = obj_mkid_actor.sprite_index
        if (obj_mkid_actor.sprite_index == mm.rsprite)
            sprito2 = spr_mkid_rfall
        if (mm.sprite_index == spr_mkid_rt)
            sprito2 = spr_mkid_rtfall
        if (mm.sprite_index == mm.dsprite)
            sprito2 = spr_mkid_dfall
        if (mm.sprite_index == mm.usprite)
            sprito2 = spr_mkid_ufall
        if (mm.sprite_index == mm.lsprite)
            sprito2 = spr_mkid_lfall
        if (mm.depth > obj_mainchara.depth)
            draw_custom_ext(bbox_left, bbox_right, bbox_top, (bbox_bottom - 1), sprito2, mm.image_index, 1, 1, 0.4, mm.x, (mm.y + (mm.sprite_height * 1)))
        else
            ndtry = 1
    }
    sprito = obj_mainchara.sprite_index
    if (obj_mainchara.rsprite == spr_maincharar)
    {
        if (obj_mainchara.sprite_index == spr_maincharar)
            sprito = spr_maincharar_fall
        if (obj_mainchara.sprite_index == spr_maincharad)
            sprito = spr_maincharad_fall
        if (obj_mainchara.sprite_index == spr_maincharau)
            sprito = spr_maincharau_fall
        if (obj_mainchara.sprite_index == spr_maincharal)
            sprito = spr_maincharal_fall
    }
    if (obj_mainchara.rsprite == spr_maincharar_umbrella)
    {
        if (obj_mainchara.sprite_index == spr_maincharar_umbrella)
            sprito = spr_maincharar_umbrellafall
        if (obj_mainchara.sprite_index == spr_maincharad_umbrella)
            sprito = spr_maincharad_umbrellafall
        if (obj_mainchara.sprite_index == spr_maincharau_umbrella)
            sprito = spr_maincharau_umbrellafall
        if (obj_mainchara.sprite_index == spr_maincharal_umbrella)
            sprito = spr_maincharal_umbrellafall
    }
    if (death == 1)
    {
        if (obj_mainchara.sprite_index == spr_maincharar)
            sprito = spr_charar_fall
        if (obj_mainchara.sprite_index == spr_maincharad)
            sprito = spr_charad_fall
        if (obj_mainchara.sprite_index == spr_maincharau)
            sprito = spr_charau_fall
        if (obj_mainchara.sprite_index == spr_maincharal)
            sprito = spr_charal_fall
    }
    simage = obj_mainchara.image_index
    if (FL_HaveUmbrella == 0)
        draw_custom_ext(bbox_left, bbox_right, bbox_top, (bbox_bottom - 1), sprito, simage, 1, 1, 0.4, obj_mainchara.x, (obj_mainchara.y + (obj_mainchara.sprite_height * 1)))
    if (FL_HaveUmbrella == 1)
    {
        if (obj_mainchara.sprite_index == obj_mainchara.dsprite)
            value = 3
        if (obj_mainchara.sprite_index == obj_mainchara.usprite)
            value = 16
        if (obj_mainchara.sprite_index == obj_mainchara.rsprite)
            value = 10
        if (obj_mainchara.sprite_index == obj_mainchara.lsprite)
            value = 9
        draw_custom_ext(bbox_left, bbox_right, bbox_top, (bbox_bottom - 1), sprito, simage, 1, 1, 0.4, (obj_mainchara.x - value), (obj_mainchara.y + 30))
    }
    if (ndtry == 1)
        draw_custom_ext(bbox_left, bbox_right, bbox_top, (bbox_bottom - 1), sprito2, mm.image_index, 1, 1, 0.4, mm.x, (mm.y + (mm.sprite_height * 1)))
    draw_sprite(sprite_index, image_index, x, y)
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
	if (global.debug == true)
    {
        if keyboard_check_pressed(vk_space)
            death = 1
    }
}
