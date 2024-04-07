var text_yofs = 8
if (global.language == "ja")
    text_yofs = 5
if (guy.x > -32)
{
    guy.x = -34
    guy.hspeed = 0
    talk[0] = 1
}
if (talk[0] == 1 && shake == 0)
{
    draw_sprite(spr_blconsm_shrt, 0, (guy.x + 190), guy.y)
    scr_setfont(fnt_plain)
    draw_set_color(c_black)
    draw_text((guy.x + 220), (guy.y + text_yofs), string_hash_to_newline(scr_gettext("obj_bringitinguys_298")))
}
if (guy2.x > -24)
{
    guy2.x = -24
    guy2.hspeed = 0
    talk[1] = 1
}
if (talk[1] == 1 && shake == 0)
{
    draw_sprite(spr_blconsm_shrt, 0, (guy2.x + 90), guy2.y)
    scr_setfont(fnt_plain)
    draw_set_color(c_black)
    draw_text((guy2.x + 120), (guy2.y + text_yofs), string_hash_to_newline(scr_gettext("obj_bringitinguys_314")))
}
if (guy3.x > -24)
{
    guy3.x = -24
    guy3.hspeed = 0
    talk[2] = 1
}
if (talk[2] == 1 && shake == 0)
{
    draw_sprite(spr_blconsm_shrt, 0, (guy3.x + 130), guy3.y)
    scr_setfont(fnt_plain)
    draw_set_color(c_black)
    draw_text((guy3.x + 160), (guy3.y + text_yofs), string_hash_to_newline(scr_gettext("obj_bringitinguys_329")))
}
if (guy4.y < (room_height - 60))
{
    guy4.y = (room_height - 60)
    guy4.vspeed = 0
}
if (guy_r.x < (room_width - 80))
{
    guy_r.x = (room_width - 80)
    guy_r.hspeed = 0
    talk_r[0] = 1
}
if (talk_r[0] == 1 && shake == 0)
{
    draw_sprite(spr_blconsm2_shrt, 0, (guy_r.x - 113), guy_r.y)
    scr_setfont(fnt_plain)
    draw_set_color(c_black)
    draw_text((guy_r.x - 88), (guy_r.y + text_yofs), string_hash_to_newline(scr_gettext("obj_bringitinguys_355")))
}
if (guy_r2.x < (room_width - 90))
{
    guy_r2.x = (room_width - 90)
    guy_r2.hspeed = 0
    talk_r[1] = 1
}
if (talk_r[1] == 1 && shake == 0)
{
    draw_sprite(spr_blconsm2_shrt, 0, (guy_r2.x - 113), guy_r2.y)
    scr_setfont(fnt_plain)
    draw_set_color(c_black)
    draw_text((guy_r2.x - 88), (guy_r2.y + text_yofs), string_hash_to_newline(scr_gettext("obj_bringitinguys_371")))
}
if (guy_r3.x < (room_width - 90))
{
    guy_r3.x = (room_width - 90)
    guy_r3.hspeed = 0
    talk_r[2] = 1
}
if (talk_r[2] == 1 && shake == 0)
{
    draw_sprite(spr_blconsm2_shrt, 0, (guy_r3.x - 113), guy_r3.y)
    scr_setfont(fnt_plain)
    draw_set_color(c_black)
    draw_text((guy_r3.x - 88), (guy_r3.y + text_yofs), string_hash_to_newline(scr_gettext("obj_bringitinguys_387")))
}
if (guy_r4.x < (room_width - 90))
{
    guy_r4.x = (room_width - 90)
    guy_r4.hspeed = 0
}
if (shake > 0)
{
    shake += 0.02
    for (i = 0; i < 8; i += 1)
    {
        sh[i].x = ((shx[i] + random(shake)) - random(shake))
        sh[i].y = ((shy[i] + random(shake)) - random(shake))
    }
}
