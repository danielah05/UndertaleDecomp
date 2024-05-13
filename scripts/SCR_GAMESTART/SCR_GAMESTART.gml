/// @func	SCR_GAMESTART()
/// @desc	Script used to initialize various parts of the game.
function SCR_GAMESTART()
{
	randomize()
	audio_channel_num(128)
	global.awfultest = 0
	global.steam_int = false
	
	/* if steam_initialised()
	{
	    global.steam_int = true
	    if steam_file_exists("system_information_962")
	    {
	        exd = file_text_open_write("system_information_962")
	        file_text_write_string(exd, "a")
	        file_text_close(exd)
	    }
	    if steam_file_exists("system_information_963")
	    {
	        exd = file_text_open_write("system_information_963")
	        file_text_write_string(exd, "b")
	        file_text_close(exd)
	        if file_exists("system_information_962")
	            file_delete("system_information_962")
	        if steam_file_exists("system_information_962")
	            steam_file_delete("system_information_962")
	    }
	} */
	
	global.debug = false
	global.hp = 20
	global.maxhp = 20
	global.en = 20
	global.maxen = 20
	global.at = 10
	global.df = 10
	global.adef = 0
	global.sp = 4
	global.asp = 4
	global.hb = 5
	global.gt = 5
	global.km = 0
	global.ph = 0
	global.gold = 0
	global.xp = 0
	global.lv = 1
	global.area = 0
	global.charname = "CHARA"
	for (i = 0; i < InventorySize; i += 1)
	{
	    global.item[i] = Items.Null;
	    global.spell[i] = 1
	    global.bulletvariable[i] = 0
	    global.menuno = -1
	    global.menucoord[i] = 0
	    global.bmenuno = 0
	    global.bmenucoord[i] = 0
	}
	for (i = 0; i < 24; i += 1)
	    global.areapop[i] = 0
	for (i = 0; i < 99; i += 1)
	    global.msg[i] = "%%%"
	global.area = 0
	for (i = 0; i < 512; i += 1)
	    global.flag[i] = 0
	FL_DimensionalBoxAItem1 = Items.ToughGlove;
	FL_DimensionalBoxAItem2 = Items.Null;
	FL_DimensionalBoxAItem3 = Items.Null;
	FL_DimensionalBoxAItem4 = Items.Null;
	FL_DimensionalBoxAItem5 = Items.Null;
	FL_FinalTorielChoice = Choices.Stayed
	global.idealborder[0] = 0
	global.idealborder[1] = 0
	global.idealborder[2] = 0
	global.idealborder[3] = 0
	global.plot = 0
	global.currentroom = room_start
	for (i = 0; i < 3; i += 1)
	{
	    global.monstername[i] = "Error"
	    global.monsterhp[i] = 50
	    global.monstermaxhp[i] = 50
	    global.monsterdef[i] = 0
	    global.xpreward[i] = 0
	    global.goldreward[i] = 0
	    global.itemrewardid[i] = 0
	    global.itemrewardchance[i] = 0
	    global.monster[i] = false
	    global.attacker[i] = 0
	    global.mnpwr[i] = 0
	    global.bulletpwr[i] = 0
	    global.hurtanim[i] = 0
	}
	global.xpreward[3] = 0
	global.goldreward[3] = 0
	global.battlegroup = BattleGroup.TorielFroggit
	global.turntimer = 0
	global.talked = false
	global.inv = 20
	global.invc = 0
	global.turnmax = 0
	global.myfight = 0
	global.mnfight = 0
	global.incombat = 0
	global.firingrate = 14
	global.border = 0
	global.turn = 0
	global.actfirst = 0
	global.extraintro = 0
	global.mytarget = 0
	global.confirm = "ord('z')"
	global.damagetimer = 90
	global.attacktype = 1
	global.wstrength = 0
	global.pwr = 0
	global.attackspeed = 11
	global.attackspeedr = 2
	global.wstrength = 0
	global.kills = 0
	global.specialbattle = 0
	global.batmusic = 43872483278
	global.myview = 0
	global.hshake = 0
	global.vshake = 0
	global.shakespeed = 0
	global.encounter = 0
	global.facing = Direction.Down
	global.phasing = 0
	global.choices = 0
	global.interact = 0
	global.viewpan = 0
	global.inbattle = false
	global.facechoice = 0
	global.faceemotion = 0
	global.seriousbattle = 0
	global.mercy = 0
	global.item[0] = Items.Null
	global.item[1] = Items.Null
	global.item[2] = Items.Null
	global.item[3] = Items.Null
	global.item[4] = Items.Null
	global.item[5] = Items.Null
	global.item[6] = Items.Null
	global.item[7] = Items.Null
	global.item[8] = Items.Null
	global.weapon = Items.Stick
	global.armor = Items.Bandage;
	global.phone[0] = PhoneName.Null
	global.phone[1] = PhoneName.Null
	global.phone[2] = PhoneName.Null
	global.phone[3] = PhoneName.Null
	global.phone[4] = PhoneName.Null
	global.phone[5] = PhoneName.Null
	global.phone[6] = PhoneName.Null
	global.phone[7] = PhoneName.Null
	global.phone[8] = PhoneName.Null
	global.menuchoice[0] = 1
	global.menuchoice[1] = 1
	global.menuchoice[2] = 0
	global.menuchoice[3] = 0
	global.choice = -1
	global.lastsavedtime = 0
	global.lastsavedkills = 0
	global.lastsavedlv = 0
	global.filechoice = 0
	global.dontfade = 0
	global.entrance = 0
	global.currentsong = -1
	global.currentsong2 = -1
	global.batmusic = -1
	global.typer = 5
	global.msc = 0
	global.hardmode = 0
}
