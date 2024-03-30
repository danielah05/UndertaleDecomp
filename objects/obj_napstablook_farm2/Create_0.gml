dsprite = spr_napstablook_d_headphone
usprite = spr_napstablook_u_headphone
lsprite = spr_napstablook_l_headphone
rsprite = spr_napstablook_r_headphone
dtsprite = spr_napstablook_d_headphone
utsprite = spr_napstablook_u_headphone
ltsprite = spr_napstablook_l_headphone
rtsprite = spr_napstablook_r_headphone
myinteract = 0
facing = Direction.Down
direction = 270
talkedto = 0
image_speed = 0
fun = false
con = 0
bringback = 0
buffer = 0
if (scr_murderlv() < 10)
{
    snail[0] = instance_create(690, 70, obj_npc_marker)
    snail[0].sprite_index = spr_snailyellow
    snail[1] = instance_create(690, 100, obj_npc_marker)
    snail[1].sprite_index = spr_snailred
    snail[2] = instance_create(690, 130, obj_npc_marker)
    snail[2].sprite_index = spr_snailblue
    for (i = 0; i < 3; i += 1)
    {
        snail[i].depth = 4000
        snail[i].image_speed = 0
        snail[i].visible = true
    }
}
blcontimer = 0
encouragement = 0
blconyes = 0
snailtimer = 0
snailsad = 0
won = 0
fun = false
con = 0
bringback = 0
if (FL_TruePacifist == true)
    instance_destroy()
if (scr_murderlv() >= 10)
    instance_destroy()
