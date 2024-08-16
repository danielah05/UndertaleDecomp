dsprite = spr_npc_dadslime
usprite = spr_npc_dadslime
lsprite = spr_npc_dadslime
rsprite = spr_npc_dadslime
dtsprite = spr_npc_dadslime
utsprite = spr_npc_dadslime
ltsprite = spr_npc_dadslime
rtsprite = spr_npc_dadslime
myinteract = 0
facing = Direction.Down
direction = 0
talkedto = 0
image_speed = 0
gox = 0
if (FL_Fun == 63)
{
    if ossafe_file_exists("undertale.ini")
    {
        ossafe_ini_open("undertale.ini")
        fsx = ini_read_real("General", "fun", 0)
        var dosave = 0
        if (fsx == 63 && FL_Fun == 63)
        {
            gox = 1
            type = 1
            ini_write_real("General", "fun", 0)
            FL_Fun = 0
            dosave = 1
        }
        ossafe_ini_close()
        if dosave
            ossafe_savedata_save()
    }
}
choos = choose(0, 1)
if (choos != 1)
    gox = 0
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
    gox = 2
if (gox == 0)
    instance_destroy()
if (FL_TruePacifist == true)
    instance_destroy()
if (scr_murderlv() >= 12)
    instance_destroy()
