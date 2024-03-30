timer = -30
death = 0
if ossafe_file_exists("system_information_963")
    death = 1
doreground = instance_create(x, y, obj_npc_marker)
doreground.sprite_index = spr_myroom_doreground
doreground.visible = true
doreground.depth = 500
fix = 0
image_index = 0
image_speed = 0
dooropen = caster_load("music/end/dooropen.ogg")
crickets = caster_load("music/end/crickets.ogg")
doorclose = caster_load("music/end/doorclose.ogg")
caster_loop(crickets, 1, 0.9)
global.inbattle = false
