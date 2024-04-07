myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if instance_exists(obj_papyrusparent)
{
    scr_papface(0, 0)
    global.msg[1] = scr_gettext("obj_bonebox_63") //HEY^1, THOSE ARE ALL&THE ATTACKS I USED&ON YOU./
    global.msg[2] = scr_gettext("obj_bonebox_64") //GREAT MEMORIES^1,&HUH?/
    global.msg[3] = scr_gettext("obj_bonebox_65") //SEEMS LIKE IT&WAS ONLY&YESTERDAY.../
    global.msg[4] = scr_gettext("obj_bonebox_66") //\\E3EVEN THOUGH&IT BASICALLY&JUST HAPPENED./%%
    if (FL_NeutralPapyrusSpared == true)
    {
        global.msg[1] = scr_gettext("obj_bonebox_70") //HEY^1, THOSE ARE ALL&THE ATTACKS I&DIDN'T USE./
        global.msg[2] = scr_gettext("obj_bonebox_71") //\\WHOW LUCKY OF YOU^1!&HAD I ONLY USED&MY \\YSPECIAL ATTACK\\W,/
        global.msg[3] = scr_gettext("obj_bonebox_72") //"\\E2YOU SURELY WOULD&HAVE BEEN BLASTED&TO.../
        global.msg[4] = scr_gettext("obj_bonebox_73") //\\WH\\E3EY.^1 WAIT^1.&WHERE'S MY \\YSPECIAL&ATTACK\\W?/
        global.msg[5] = scr_gettext("obj_bonebox_74") //\\E1NO^1! I'VE BEEN&DOGBURGLED BY THAT&PERNICIOUS PUP!/
        global.msg[6] = scr_gettext("obj_bonebox_75") //\\E3THAT LOATHESOME&SCOUNDREL LOVES TO&SNEAK INTO MY ROOM./
        global.msg[7] = scr_gettext("obj_bonebox_76") //\\E5SOMETIMES IT EVEN&CRAWLS INTO MY BED&WHILE I'M RESTING./
        global.msg[8] = scr_gettext("obj_bonebox_77") //\\E3IF THAT WASN'T&BAD ENOUGH^1, IT HAS&VERY COLD FEET./%%
    }
    if (read > 0)
        global.msg[0] = scr_gettext("obj_bonebox_81") //* (It's a box of bones.)/%%
}
else
    global.msg[0] = scr_gettext("obj_bonebox_85") //* (It's a box of bones.)/%%
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
