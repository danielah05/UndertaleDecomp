scr_setfont(fnt_maintext)
draw_set_color(c_white)
siner += 1
if (active == true)
{
    var xx = (x + 20)
    if (global.language == "ja")
        xx -= 30
    draw_text_transformed((xx + sin((siner / 4))), (y + cos((siner / 4))), string_hash_to_newline(scr_gettext("mett_ratings", string(global.ratings))), (2 - (sin((siner / 4)) * 0.05)), (2 - (cos((siner / 4)) * 0.05)), 0)
    for (i = 0; i < 6; i += 1)
    {
        if (rq_v[i] >= 0)
        {
            thisv = ("+" + string(rq_v[i]))
            draw_set_color(c_lime)
        }
        else
        {
            thisv = string(rq_v[i])
            draw_set_color(c_red)
        }
        rq_s[i] += (1 * ((i + 2) / 2))
        if (rq_s[i] > 120)
            draw_set_alpha(((170 - rq_s[i]) / 50))
        var slim = 60
        var vpos = 130
        var linespace = 12
        if (global.language == "ja")
        {
            slim = 40
            vpos = 150
            linespace = 15
        }
        var scale_x = 1
        var swidth = string_width(string_hash_to_newline(rq[i]))
        if (swidth > (vpos - slim))
            scale_x = ((vpos - slim) / swidth)
        var spos = round((vpos - (swidth * scale_x)))
        xx = 0
        if (rq_s[i] < 10)
            xx = ((cos(rq_s[i]) * 21) / ((rq_s[i] * 2) + 1))
        draw_text_transformed(((x + spos) + xx), ((y + 140) + (i * linespace)), string_hash_to_newline(rq[i]), scale_x, 1, 0)
        draw_text(((x + vpos) + xx), ((y + 140) + (i * linespace)), string_hash_to_newline(thisv))
        draw_set_alpha(1)
    }
    draw_set_color(c_white)
    draw_line_width((x + 10), (y + 40), (x + 10), (y + 130), 3)
    draw_set_color(c_white)
    draw_line_width((x + 10), (y + 130), (x + 180), (y + 130), 3)
    draw_set_color(c_yellow)
    draw_line((x + 10), (y + 55), (x + 180), (y + 55))
    ratingsy = (global.ratings * 0.0075)
    draw_set_color(c_aqua)
    draw_line((x + 10), ((y + 130) - ratingsy), (x + 180), ((y + 130) - ratingsy))
    for (i = 0; i < 9; i += 1)
    {
        draw_set_color(c_fuchsia)
        rpy[i] = (rp[i] * 0.0075)
        rpy[(i + 1)] = (rp[(i + 1)] * 0.0075)
        draw_line_width(((x + 10) + (i * 20)), ((y + 130) - rpy[i]), ((x + 30) + (i * 20)), ((y + 130) - rpy[(i + 1)]), 2)
    }
}
if (checkhp > global.hp)
{
    curtype = 1
    if (boastmode == 1)
    {
        curtype = 2
        boastmode = 0
    }
    if (heel == 1)
        curtype = 3
    event_user(0)
}
checkhp = global.hp
if (boastmode == 1)
{
    if (global.turntimer > 0 && global.mnfight == 2)
    {
        if (o_ob == 0)
            o_ob = 1
        else
            o_ob = 0
        if (o_ob == 0)
            global.ratings += 1
        if (o_ob == 1)
            global.ratings += 2
        if instance_exists(obj_mettatonex)
        {
            if (obj_mettatonex.turns >= 20)
                global.ratings += 2
        }
    }
    if (global.myfight == 0 && global.mnfight == 0)
        boastmode = 0
    if instance_exists(obj_essaystuff)
        boastmode = 0
}
if (heel == 1)
{
    if (global.myfight == 0 && global.mnfight == 0)
        heel = 0
}
event_user(1)
if (novel_armor == 1)
{
    curtype = 6
    event_user(0)
    novel_armor = 0
}
if (global.mnfight == 0 && global.myfight == 0)
{
    timeloss += 1
    o_o += 1
    if (o_o > 3)
        o_o = 0
    if (timeloss < 4000 && o_o == 0)
        global.ratings -= 1
}
