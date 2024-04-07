if (side == 0)
{
    yy = view_yview_get(view_current)
    if instance_exists(writer)
    {
        if (writer.writingy > (yy + 80))
            writer.writingy -= 155
    }
    if instance_exists(obj_face)
    {
        if (obj_face.y > (yy + 80))
            obj_face.y -= 155
    }
    draw_set_color(c_white)
    draw_rectangle((view_xview_get(view_current) + 16), (view_yview_get(view_current) + 5), (view_xview_get(view_current) + 304), (view_yview_get(view_current) + 80), false)
    draw_set_color(c_black)
    draw_rectangle((view_xview_get(view_current) + 19), (view_yview_get(view_current) + 8), (view_xview_get(view_current) + 301), (view_yview_get(view_current) + 77), false)
}
else
{
    yy = view_yview_get(view_current)
    if instance_exists(writer)
    {
        if (writer.writingy < (yy + 80))
            writer.writingy += 155
    }
    if instance_exists(obj_face)
    {
        if (obj_face.y < (yy + 80))
            obj_face.y += 155
    }
    draw_set_color(c_white)
    draw_rectangle((view_xview_get(view_current) + 16), (view_yview_get(view_current) + 160), (view_xview_get(view_current) + 304), (view_yview_get(view_current) + 235), false)
    draw_set_color(c_black)
    draw_rectangle((view_xview_get(view_current) + 19), (view_yview_get(view_current) + 163), (view_xview_get(view_current) + 301), (view_yview_get(view_current) + 232), false)
}
count = 1
