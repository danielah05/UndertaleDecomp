if instance_exists(obj_uborder)
{
    depth = 5
    draw_set_color(c_black)
    ossafe_fill_rectangle((obj_uborder.x + 5), (obj_uborder.y + 5), obj_rborder.x, obj_dborder.y)
}
draw_sprite(spr_hpname, 0, 270, 400)
draw_set_color(c_red)
ossafe_fill_rectangle(310, 400, (310 + (global.maxhp * 1.2)), 420)
draw_set_color(c_yellow)
ossafe_fill_rectangle(310, 400, (310 + (global.hp * 1.2)), 420)
draw_set_color(c_white)
scr_setfont(fnt_curs)
hpwrite = string(global.hp)
if (global.hp < 10)
    hpwrite = ("0" + string(global.hp))
draw_text(200, 400, string_hash_to_newline(("LV " + string(global.lv))))
draw_text((330 + (global.maxhp * 1.2)), 400, string_hash_to_newline(((hpwrite + " / ") + string(global.maxhp))))
