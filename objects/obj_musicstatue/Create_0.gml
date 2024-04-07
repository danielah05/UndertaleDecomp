myinteract = 0
facing = Direction.Down
direction = 270
talkedto = 0
image_speed = 0
mask = instance_create(x, y, obj_npc_marker)
mask.sprite_index = spr_plinkmask
mask.image_speed = 0
shadow = instance_create(0, 0, obj_npc_marker)
shadow.sprite_index = spr_statueshadow
shadow.image_alpha = 0.4
shadow.depth = 1000
shadow.visible = true
light = instance_create(0, 0, obj_npc_marker)
light.sprite_index = spr_statuelight
light.image_alpha = 0.1
light.depth = 1000
light.visible = true
bgvol = caster_get_volume(global.currentsong)
boxvol = 0.25
boxactive = 0
if (FL_MusicStatueOn == 1)
{
    boxactive = 1
    mask.image_index = 1
    musicbox = caster_load("music/musicbox.ogg")
    image_index = 1
    caster_loop(musicbox, 0.25, 0.9)
}
con = 0
alarm[5] = 2
