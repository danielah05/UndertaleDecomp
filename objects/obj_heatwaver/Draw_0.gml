x = obj_uborder.x
y = obj_uborder.y
xa = obj_rborder.x
ya = obj_dborder.y
if (drawngr == 1)
    sprite_delete(gr)
gr = sprite_create_from_screen_x(x, y, (xa - x), (ya - y), false, false, 0, 0)
sprite_index = gr
scr_fx_waver((sprite_height / 50), cfactor)
drawngr = 1
