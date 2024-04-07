part[0] = instance_create((x + 80), y, obj_npc_marker)
part[1] = instance_create((x + 4), (y - 4), obj_npc_marker)
part[2] = instance_create((x + 52), (y + 56), obj_npc_marker)
part[3] = instance_create((x + 148), (y + 78), obj_npc_marker)
part[4] = instance_create((x + 78), (y + 120), obj_npc_marker)
part[5] = instance_create(((x + 12) + 70), ((y + 78) - 12), obj_npc_marker)
part[6] = instance_create((x + 78), (y + 154), obj_npc_marker)
ydiff = 0
xdiff = 0
siner = 0
air = 0
head = part[0]
head.sprite_index = spr_undyneb_face
hair = part[1]
hair.sprite_index = spr_undyneb_hair
armor = part[2]
armor.sprite_index = spr_undyneb_armor
pants = part[4]
pants.sprite_index = spr_undyneb_pants
larm = part[5]
larm.sprite_index = spr_undyneb_leftarm
rarm = part[3]
rarm.sprite_index = spr_undyneb_rightarm
legs = part[6]
legs.sprite_index = spr_undyneb_legs
for (i = 0; i < 7; i += 1)
{
    part[i].depth = (depth + i)
    part[i].visible = true
    part[i].image_speed = 0
    part[i].image_xscale = 2
    part[i].image_yscale = 2
}
hair.image_speed = 0.25
movetype = 0
jumpno = 0
slashno = 0
fadeout = 0
