if (global.faceemotion == 0)
    draw_sprite(sprite_index, image_index, x, y)
if (global.faceemotion > 0)
{
    xx = (obj_shop1.shx + 20)
    yy = 36
    if (global.faceemotion > 6)
        global.faceemotion = 6
    draw_sprite(facespr[global.faceemotion], image_index, xx, yy)
}
