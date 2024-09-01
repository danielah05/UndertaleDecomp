myinteract = 3
global.msc = 226
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (FL_TruePacifist == true)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_nicesnowman_107") //* Oh^1?&* About that piece I gave you?/
    global.msg[1] = scr_gettext("obj_nicesnowman_108") //* .../
    global.msg[2] = scr_gettext("obj_nicesnowman_109") //* ... I never gave you anything./%%
    scr_itemcheck(Items.SnowmanPiece)
    scr_storagecheck(Items.SnowmanPiece)
    if (FL_SnowmanStatus == SnowmanStatus.TookPiece || FL_SnowmanStatus == SnowmanStatus.TookPieceAfterDispose)
    {
        global.msg[0] = scr_gettext("obj_nicesnowman_120") //* Ah..^1. I can feel that piece&  of me has been well taken&  care of./
        global.msg[1] = scr_gettext("obj_nicesnowman_121") //* Thank you./
        global.msg[1] = scr_gettext("obj_nicesnowman_122") //* Hmmm...^1?&* The barrier's opened up?/
        global.msg[2] = scr_gettext("obj_nicesnowman_123") //* Hmmm..^1.&* Then^1, if it's not too much&  to ask.../
        global.msg[3] = scr_gettext("obj_nicesnowman_124") //* ... could you take that&  piece of me to the surface?/
        global.msg[4] = scr_gettext("obj_nicesnowman_125") //* I would really appreciate&  it./%%
    }
    if (FL_SnowmanStatus == SnowmanStatus.TookPiece || FL_SnowmanStatus == SnowmanStatus.TookPieceAfterDispose)
    {
        if (haveit == false)
        {
            if (haveit2 == 0)
            {
                global.msg[0] = scr_gettext("obj_nicesnowman_133") //* So^1, did you take that&  piece of me very far&  away...?/
                global.msg[1] = scr_gettext("obj_nicesnowman_134") //* .../
                global.msg[2] = scr_gettext("obj_nicesnowman_135") //* Where's the piece!?/%%
            }
        }
    }
    if (FL_SnowmanStatus == SnowmanStatus.WitnessedPlayerUse || FL_SnowmanStatus == SnowmanStatus.TalkedToAfterWitness)
    {
        global.msg[0] = scr_gettext("obj_nicesnowman_140") //* Ah^1, the barrier's open...?/
        global.msg[1] = scr_gettext("obj_nicesnowman_141") //* You know I cannot move^1.&* Why are you telling me^1?&* To mock me?/
        global.msg[2] = scr_gettext("obj_nicesnowman_142") //* Everyone may think you are a&  good person^1, but this snowman&  knows the truth./
        global.msg[3] = scr_gettext("obj_nicesnowman_143") //* Someday^1, your friends will&  realize your heart is as&  cold as my butt./%%
    }
}
if (scr_murderlv() >= MurderLevel.Lv2TorielKilled)
{
    global.msc = 0
    noroom = 0
    if (FL_SnowmanPieceCounter <= 2)
        scr_itemget(Items.SnowmanPiece)
    if (noroom == 1)
        global.msg[0] = scr_gettext("obj_nicesnowman_155") //* (You're carrying too many&  items.)/%%
    else
    {
        if (FL_SnowmanPieceCounter == 0)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_161") //* Hello^1.&* I am a snowman^1.&* I cannot move./
            global.msg[1] = scr_gettext("obj_nicesnowman_162") //* Traveller^1, if you could.../
            global.msg[2] = scr_gettext("obj_nicesnowman_163") //* (You got the Snowman Piece.)/%%
        }
        if (FL_SnowmanPieceCounter == 1)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_167") //* Oh me^1, oh my^1.&* What are you doing?/
            global.msg[1] = scr_gettext("obj_nicesnowman_168") //* Soon there won't be any&  of me left.../
            global.msg[2] = scr_gettext("obj_nicesnowman_169") //* (You got the Snowman Piece.)/%%
        }
        if (FL_SnowmanPieceCounter == 2)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_173") //* Stop..^1.&* Please.../ 
            global.msg[1] = scr_gettext("obj_nicesnowman_174") //* (You got the Snowman Piece.)/%%
        }
        if (FL_SnowmanPieceCounter >= 3)
            global.msg[0] = scr_gettext("obj_nicesnowman_177") //* (A useless pile of snow.)/%%
        dt = 1
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
