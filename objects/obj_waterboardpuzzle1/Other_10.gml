block = instance_position((xx + 10), (yy + 10), obj_solidparent)
if (block != noone)
{
    block.x = 0
    block.y = 0
}
_new = instance_create(xx, yy, obj_npc_marker)
_new.depth = 850000
_new.sprite_index = spr_bridgeseed
_new.image_speed = 0
_new.image_index = 6
_new.visible = true
_new.image_speed = 0
