if instance_exists(obj_mainchara)
{
    image_blend = obj_mainchara.image_blend
    x = obj_mainchara.x
    y = (horizon - (obj_mainchara.y - horizon))
    if (y < ceiling)
        y = ceiling
    sprite_index = obj_mainchara.sprite_index
    image_index = obj_mainchara.image_index
    if (sprite_index == spr_maincharad && flip == 0)
    {
        sprite_index = spr_maincharau
        flip = 1
    }
    if (sprite_index == spr_maincharau && flip == 0)
    {
        sprite_index = spr_maincharad
        flip = 1
    }
    flip = 0
}
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, 1)
