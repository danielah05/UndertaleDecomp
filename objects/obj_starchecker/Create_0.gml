vol = caster_get_volume(global.currentsong)
caster_set_volume(global.currentsong, (vol / 2))
xbound = x
xbound2 = (x + 320)
ybound = y
ybound2 = (y + 240)
st = instance_create(x, y, obj_npc_marker)
st.visible = true
st.depth = -10
st.sprite_index = spr_starpattern
st.image_speed = 0.2
if (room == room_water11)
    sprite_index = spr_starcheckeredit2
buffer = 0
alarm[0] = 2
image_speed = 0.1
sprite_index = scr_getsprite(sprite_index)
dest = 0
dest_timer = 0
