buffer -= 1;

if (myinteract == 3)
    myinteract = 0;

if (myinteract == 4)
{
    if (!instance_exists(OBJ_WRITER) && !instance_exists(obj_ds3_numberpicker) && !instance_exists(obj_ds3_donationlist))
    {
        buffer = 2;
        
        if (sprite_index == spr_ds3_cashbox)
            buffer = -1;
        
        myinteract = 0;
        global.interact = 0;
        global.facing = 2;
    }
}

if (myinteract == 1)
{
    if (buffer < 0)
    {
        if (type == 0)
        {
            global.typer = 5;
            global.faceemotion = 0;
            global.facechoice = 0;
            global.msc = 970;
            instance_create(0, 0, obj_dialoguer);
            myinteract = 4;
            global.interact = 1;
        }
        
        if (type == 1)
        {
            if (global.flag[298] > 0)
            {
                instance_create(0, 0, obj_ds3_numberpicker);
                myinteract = 4;
            }
            else
            {
                global.interact = 1;
                global.msg[0] = scr_gettext("obj_ds3_box_0"); // * (It's a donation box^1, but for&  some kind of Coin's you&  don't have...)/%
                scr_regulartext();
                myinteract = 4;
            }
        }
        
        if (type == 2)
        {
            instance_create(0, 0, obj_ds3_donationlist);
            myinteract = 4;
        }
    }
    else
    {
        myinteract = 0;
    }
}
