function scr_monstersetup()
{
	myself = 0
	if (global.monster[1] == 1)
	{
	    myself = 2
	    global.monster[2] = 1
	}
	if (global.monster[0] == 1 && myself != 2)
	{
	    myself = 1
	    global.monster[1] = 1
	}
	if (global.monster[0] == 0)
	{
	    myself = 0
	    global.monster[0] = 1
	}
	if (global.monstertype[myself] == MonsterType.TestFroggit)
	{
	    global.monstername[myself] = scr_gettext("monstername_1")
	    global.monstermaxhp[myself] = 23
	    global.monsterhp[myself] = 23
	    global.monsteratk[myself] = 4
	    global.monsterdef[myself] = 1
	    global.xpreward[myself] = 2
	    global.goldreward[myself] = 2
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Dummy)
	{
	    global.monstername[myself] = scr_gettext("monstername_2")
	    global.monstermaxhp[myself] = 15
	    global.monsterhp[myself] = 15
	    global.monsteratk[myself] = 0
	    global.monsterdef[myself] = -5
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Tutorial_Froggit)
	{
	    global.monstername[myself] = scr_gettext("monstername_3")
	    global.monstermaxhp[myself] = 20
	    global.monsterhp[myself] = 20
	    global.monsteratk[myself] = 4
	    global.monsterdef[myself] = 1
	    global.xpreward[myself] = 10
	    global.goldreward[myself] = 20
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Froggit)
	{
	    global.monstername[myself] = scr_gettext("monstername_4")
	    global.monstermaxhp[myself] = 30
	    global.monsterhp[myself] = 30
	    global.monsteratk[myself] = 4
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 3
	    global.goldreward[myself] = 2
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Whimsun)
	{
	    global.monstername[myself] = scr_gettext("monstername_5")
	    global.monstermaxhp[myself] = 10
	    global.monsterhp[myself] = 10
	    global.monsteratk[myself] = 4
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 2
	    global.goldreward[myself] = 2
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Moldsmal_1)
	{
	    global.monstername[myself] = scr_gettext("monstername_6")
	    global.monstermaxhp[myself] = 50
	    global.monsterhp[myself] = 50
	    global.monsteratk[myself] = 4
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 3
	    global.goldreward[myself] = 3
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Migosp)
	{
	    global.monstername[myself] = scr_gettext("monstername_7")
	    global.monstermaxhp[myself] = 40
	    global.monsterhp[myself] = 40
	    global.monsteratk[myself] = 5
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 5
	    global.goldreward[myself] = 4
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Vegetoid)
	{
	    global.monstername[myself] = scr_gettext("monstername_8")
	    global.monstermaxhp[myself] = 72
	    global.monsterhp[myself] = 72
	    global.monsteratk[myself] = 5
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 6
	    global.goldreward[myself] = 1
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Loox)
	{
	    global.monstername[myself] = scr_gettext("monstername_9")
	    global.monstermaxhp[myself] = 50
	    global.monsterhp[myself] = 50
	    global.monsteratk[myself] = 5
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 7
	    global.goldreward[myself] = 5
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Toriel)
	{
	    global.monstername[myself] = scr_gettext("monstername_10")
	    global.monstermaxhp[myself] = 440
	    global.monsterhp[myself] = 440
	    global.monsteratk[myself] = 6
	    if (FL_Hardmode == true)
	        global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 1
	    if (scr_murderlv() >= MurderLevel.Lv1RuinsKills)
	        global.monsterdef[myself] = -9999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Napstablook)
	{
	    global.monstername[myself] = scr_gettext("monstername_11")
	    global.monstermaxhp[myself] = 88
	    global.monsterhp[myself] = 88
	    global.monsteratk[myself] = 5
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = -1
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Moldsmal_2)
	{
	    global.monstername[myself] = scr_gettext("monstername_12")
	    global.monstermaxhp[myself] = 50
	    global.monsterhp[myself] = 50
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 3
	    global.goldreward[myself] = 3
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Doggo)
	{
	    global.monstername[myself] = scr_gettext("monstername_13")
	    global.monstermaxhp[myself] = 70
	    global.monsterhp[myself] = 70
	    global.monsteratk[myself] = 6
	    global.monsterdef[myself] = 1
	    global.xpreward[myself] = 30
	    global.goldreward[myself] = 20
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.LesserDog)
	{
	    global.monstername[myself] = scr_gettext("monstername_14")
	    global.monstermaxhp[myself] = 60
	    global.monsterhp[myself] = 60
	    global.monsteratk[myself] = 6
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 18
	    global.goldreward[myself] = 15
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Dogamy)
	{
	    global.monstername[myself] = scr_gettext("monstername_15")
	    global.monstermaxhp[myself] = 108
	    global.monsterhp[myself] = 108
	    global.monsteratk[myself] = 6
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 30
	    global.goldreward[myself] = 25
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Dogaressa)
	{
	    global.monstername[myself] = scr_gettext("monstername_16")
	    global.monstermaxhp[myself] = 108
	    global.monsterhp[myself] = 108
	    global.monsteratk[myself] = 6
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 30
	    global.goldreward[myself] = 25
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.GreaterDog)
	{
	    global.monstername[myself] = scr_gettext("monstername_17")
	    global.monstermaxhp[myself] = 105
	    global.monsterhp[myself] = 105
	    global.monsteratk[myself] = 6
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 80
	    global.goldreward[myself] = 60
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Snowdrake)
	{
	    global.monstername[myself] = scr_gettext("monstername_18")
	    if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	        global.monstername[myself] = scr_gettext("monstername_18b")
	    global.monstermaxhp[myself] = 74
	    global.monsterhp[myself] = 74
	    global.monsteratk[myself] = 6
	    global.monsterdef[myself] = 2
	    global.xpreward[myself] = 22
	    global.goldreward[myself] = 18
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.IceCap)
	{
	    global.monstername[myself] = scr_gettext("monstername_19")
	    global.monstermaxhp[myself] = 48
	    global.monsterhp[myself] = 48
	    global.monsteratk[myself] = 6
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 17
	    global.goldreward[myself] = 17
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Ice)
	{
	    global.monstername[myself] = scr_gettext("monstername_20")
	    global.monstermaxhp[myself] = 48
	    global.monsterhp[myself] = 48
	    global.monsteratk[myself] = 0
	    global.monsterdef[myself] = -100
	    global.xpreward[myself] = 25
	    global.goldreward[myself] = 40
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Jerry)
	{
	    global.monstername[myself] = scr_gettext("monstername_21")
	    global.monstermaxhp[myself] = 80
	    global.monsterhp[myself] = 80
	    global.monsteratk[myself] = 1
	    global.monsterdef[myself] = 8
	    global.xpreward[myself] = 1
	    global.goldreward[myself] = 55
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Gyftrot)
	{
	    global.monstername[myself] = scr_gettext("monstername_22")
	    global.monstermaxhp[myself] = 114
	    global.monsterhp[myself] = 114
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 3
	    global.xpreward[myself] = 35
	    global.goldreward[myself] = 30
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Aaron)
	{
	    global.monstername[myself] = scr_gettext("monstername_23")
	    global.monstermaxhp[myself] = 98
	    global.monsterhp[myself] = 98
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 2
	    global.xpreward[myself] = 52
	    global.goldreward[myself] = 25
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Temmie)
	{
	    global.monstername[myself] = scr_gettext("monstername_24")
	    global.monstermaxhp[myself] = 5
	    global.monsterhp[myself] = 5
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = -20
	    global.xpreward[myself] = 40
	    global.goldreward[myself] = 50
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Papyrus)
	{
	    global.monstername[myself] = scr_gettext("monstername_25")
	    global.monstermaxhp[myself] = 680
	    global.monsterhp[myself] = 680
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 2
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Moldbygg)
	{
	    global.monstername[myself] = scr_gettext("monstername_26")
	    global.monstermaxhp[myself] = 70
	    global.monsterhp[myself] = 70
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 46
	    global.goldreward[myself] = 30
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Woshua)
	{
	    global.monstername[myself] = scr_gettext("monstername_28")
	    global.monstermaxhp[myself] = 70
	    global.monsterhp[myself] = 70
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 1
	    global.xpreward[myself] = 52
	    global.goldreward[myself] = 25
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Shyren)
	{
	    global.monstername[myself] = scr_gettext("monstername_29")
	    global.monstermaxhp[myself] = 66
	    global.monsterhp[myself] = 66
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 2
	    global.xpreward[myself] = 52
	    global.goldreward[myself] = 25
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Agent)
	{
	    global.monstername[myself] = scr_gettext("monstername_30")
	    global.monstermaxhp[myself] = 98
	    global.monsterhp[myself] = 98
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 2
	    global.xpreward[myself] = 52
	    global.goldreward[myself] = 20
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.MadDummy)
	{
	    global.monstername[myself] = scr_gettext("monstername_31")
	    global.monstermaxhp[myself] = 200
	    global.monsterhp[myself] = 200
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = -40
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Undyne)
	{
	    global.monstername[myself] = scr_gettext("monstername_32")
	    global.monstermaxhp[myself] = 1500
	    global.monsterhp[myself] = 1500
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Mettaton_Quiz)
	{
	    global.monstername[myself] = scr_gettext("monstername_33")
	    global.monstermaxhp[myself] = 9999
	    global.monsterhp[myself] = 9999
	    global.monsteratk[myself] = 10
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.RG_01)
	{
	    global.monstername[myself] = scr_gettext("monstername_34")
	    global.monstermaxhp[myself] = 150
	    global.monsterhp[myself] = 150
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 110
	    global.goldreward[myself] = 60
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.RG_02)
	{
	    global.monstername[myself] = scr_gettext("monstername_35")
	    global.monstermaxhp[myself] = 150
	    global.monsterhp[myself] = 150
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 110
	    global.goldreward[myself] = 60
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Tsunderplane)
	{
	    global.monstername[myself] = scr_gettext("monstername_36")
	    global.monstermaxhp[myself] = 80
	    global.monsterhp[myself] = 80
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 6
	    global.xpreward[myself] = 95
	    global.goldreward[myself] = 45
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Vulkin)
	{
	    global.monstername[myself] = scr_gettext("monstername_37")
	    global.monstermaxhp[myself] = 20
	    global.monsterhp[myself] = 20
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = -10
	    global.xpreward[myself] = 70
	    global.goldreward[myself] = 50
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Pyrope)
	{
	    global.monstername[myself] = scr_gettext("monstername_38")
	    global.monstermaxhp[myself] = 110
	    global.monsterhp[myself] = 110
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 1
	    global.xpreward[myself] = 80
	    global.goldreward[myself] = 40
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Muffet)
	{
	    global.monstername[myself] = scr_gettext("monstername_39")
	    global.monstermaxhp[myself] = 1250
	    global.monsterhp[myself] = 1250
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 300
	    global.goldreward[myself] = FL_SpiderDonationTotal
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Mettaton_TilePuzzle)
	{
	    global.monstername[myself] = scr_gettext("monstername_40")
	    global.monstermaxhp[myself] = 9999
	    global.monsterhp[myself] = 9999
	    global.monsteratk[myself] = 10
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Undyne_Date)
	{
	    global.monstername[myself] = scr_gettext("monstername_41")
	    global.monstermaxhp[myself] = 1500
	    global.monsterhp[myself] = 1500
	    global.monsteratk[myself] = 10
	    global.monsterdef[myself] = 10
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Madjick)
	{
	    global.monstername[myself] = scr_gettext("monstername_42")
	    global.monstermaxhp[myself] = 190
	    global.monsterhp[myself] = 190
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = -1
	    global.xpreward[myself] = 150
	    global.goldreward[myself] = 120
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.KnightKnight)
	{
	    global.monstername[myself] = scr_gettext("monstername_43")
	    global.monstermaxhp[myself] = 230
	    global.monsterhp[myself] = 230
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 2
	    global.xpreward[myself] = 180
	    global.goldreward[myself] = 150
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.FinalFroggit)
	{
	    global.monstername[myself] = scr_gettext("monstername_44")
	    global.monstermaxhp[myself] = 100
	    global.monsterhp[myself] = 100
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 120
	    global.goldreward[myself] = 80
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Astigmatism)
	{
	    global.monstername[myself] = scr_gettext("monstername_45")
	    global.monstermaxhp[myself] = 120
	    global.monsterhp[myself] = 120
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = -2
	    global.xpreward[myself] = 130
	    global.goldreward[myself] = 85
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Whimsalot)
	{
	    global.monstername[myself] = scr_gettext("monstername_46")
	    global.monstermaxhp[myself] = 95
	    global.monsterhp[myself] = 95
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = -3
	    global.xpreward[myself] = 110
	    global.goldreward[myself] = 80
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Bomb)
	{
	    global.monstername[myself] = scr_gettext("monstername_47")
	    global.monstermaxhp[myself] = 99
	    global.monsterhp[myself] = 99
	    global.monsteratk[myself] = 1
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.RG_03)
	{
	    global.monstername[myself] = scr_gettext("monstername_48")
	    global.monstermaxhp[myself] = 100
	    global.monsterhp[myself] = 100
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 110
	    global.goldreward[myself] = 60
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.RG_04)
	{
	    global.monstername[myself] = scr_gettext("monstername_49")
	    global.monstermaxhp[myself] = 100
	    global.monsterhp[myself] = 100
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 4
	    global.xpreward[myself] = 110
	    global.goldreward[myself] = 60
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Mettaton_3)
	{
	    global.monstername[myself] = scr_gettext("monstername_50")
	    global.monstermaxhp[myself] = 9999
	    global.monsterhp[myself] = 9999
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.MettatonEX)
	{
	    global.monstername[myself] = scr_gettext("monstername_51")
	    global.monstermaxhp[myself] = 1600
	    global.monsterhp[myself] = 1600
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 1
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Asgore)
	{
	    global.monstername[myself] = scr_gettext("monstername_52")
	    global.monstermaxhp[myself] = 3500
	    global.monsterhp[myself] = 3500
	    global.monsteratk[myself] = 10
	    global.monsterdef[myself] = -30
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.LemonBread)
	{
	    global.monstername[myself] = scr_gettext("monstername_53")
	    global.monstermaxhp[myself] = 100
	    global.monsterhp[myself] = 100
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 9999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.ReaperBird)
	{
	    global.monstername[myself] = scr_gettext("monstername_54")
	    global.monstermaxhp[myself] = 100
	    global.monsterhp[myself] = 100
	    global.monsteratk[myself] = 9
	    global.monsterdef[myself] = 9999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Amalgamate)
	{
	    global.monstername[myself] = scr_gettext("monstername_55")
	    global.monstermaxhp[myself] = 400
	    global.monsterhp[myself] = 400
	    global.monsteratk[myself] = 0
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Memoryhead)
	{
	    global.monstername[myself] = scr_gettext("monstername_56")
	    global.monstermaxhp[myself] = 100
	    global.monsterhp[myself] = 100
	    global.monsteratk[myself] = 9
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Endogeny)
	{
	    global.monstername[myself] = scr_gettext("monstername_57")
	    global.monstermaxhp[myself] = 100
	    global.monsterhp[myself] = 100
	    global.monsteratk[myself] = 9
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.LostSoul_Undyne)
	{
	    global.monstername[myself] = scr_gettext("monstername_58")
	    global.monstermaxhp[myself] = 999
	    global.monsterhp[myself] = 999
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.LostSoul_Alphys)
	{
	    global.monstername[myself] = scr_gettext("monstername_59")
	    global.monstermaxhp[myself] = 999
	    global.monsterhp[myself] = 999
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.LostSoul_Papyrus)
	{
	    global.monstername[myself] = scr_gettext("monstername_60")
	    global.monstermaxhp[myself] = 999
	    global.monsterhp[myself] = 999
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.LostSoul_Sans)
	{
	    global.monstername[myself] = scr_gettext("monstername_61")
	    global.monstermaxhp[myself] = 999
	    global.monsterhp[myself] = 999
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.LostSoul_Toriel)
	{
	    global.monstername[myself] = scr_gettext("monstername_62")
	    global.monstermaxhp[myself] = 999
	    global.monsterhp[myself] = 999
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.LostSoul_Asgore)
	{
	    global.monstername[myself] = scr_gettext("monstername_63")
	    global.monstermaxhp[myself] = 999
	    global.monsterhp[myself] = 999
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.MonsterKid)
	{
	    global.monstername[myself] = scr_gettext("monstername_64")
	    global.monstermaxhp[myself] = 10
	    global.monsterhp[myself] = 10
	    global.monsteratk[myself] = 1
	    global.monsterdef[myself] = -900
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.UndyneTheUndying)
	{
	    global.monstername[myself] = scr_gettext("monstername_65")
	    global.monstermaxhp[myself] = 23000
	    global.monsterhp[myself] = 23000
	    global.monsteratk[myself] = 12
	    global.monsterdef[myself] = 5
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.GladDummy)
	{
	    global.monstername[myself] = scr_gettext("monstername_66")
	    global.monstermaxhp[myself] = 5
	    global.monsterhp[myself] = 5
	    global.monsteratk[myself] = 0
	    global.monsterdef[myself] = -5
	    global.xpreward[myself] = 200
	    global.goldreward[myself] = 100
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.MettatonNEO)
	{
	    global.monstername[myself] = scr_gettext("monstername_67")
	    global.monstermaxhp[myself] = 30000
	    global.monsterhp[myself] = 30000
	    global.monsteratk[myself] = 10
	    global.monsterdef[myself] = -40000
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Sans)
	{
	    global.monstername[myself] = scr_gettext("monstername_68")
	    global.monstermaxhp[myself] = 1
	    global.monsterhp[myself] = 1
	    global.monsteratk[myself] = 1
	    global.monsterdef[myself] = 1
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.FinalFroggit_Hardmode)
	{
	    global.monstername[myself] = scr_gettext("monstername_70")
	    global.monstermaxhp[myself] = 32
	    global.monsterhp[myself] = 32
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 2
	    global.xpreward[myself] = 4
	    global.goldreward[myself] = 2
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Astigmatism_Hardmode)
	{
	    global.monstername[myself] = scr_gettext("monstername_71")
	    global.monstermaxhp[myself] = 50
	    global.monsterhp[myself] = 50
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 2
	    global.xpreward[myself] = 8
	    global.goldreward[myself] = 6
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Whimsalot_Hardmode)
	{
	    global.monstername[myself] = scr_gettext("monstername_72")
	    global.monstermaxhp[myself] = 20
	    global.monsterhp[myself] = 20
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 3
	    global.goldreward[myself] = 4
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Migospel)
	{
	    global.monstername[myself] = scr_gettext("monstername_73")
	    global.monstermaxhp[myself] = 45
	    global.monsterhp[myself] = 45
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = 3
	    global.xpreward[myself] = 5
	    global.goldreward[myself] = 4
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Moldessa)
	{
	    global.monstername[myself] = scr_gettext("monstername_74")
	    global.monstermaxhp[myself] = 52
	    global.monsterhp[myself] = 52
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = -4
	    global.xpreward[myself] = 5
	    global.goldreward[myself] = 3
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Parsnik)
	{
	    global.monstername[myself] = scr_gettext("monstername_75")
	    global.monstermaxhp[myself] = 72
	    global.monsterhp[myself] = 72
	    global.monsteratk[myself] = 7
	    global.monsterdef[myself] = -2
	    global.xpreward[myself] = 8
	    global.goldreward[myself] = 2
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Glyde)
	{
	    global.monstername[myself] = scr_gettext("monstername_76")
	    global.monstermaxhp[myself] = 220
	    global.monsterhp[myself] = 220
	    global.monsteratk[myself] = 9
	    global.monsterdef[myself] = -20
	    global.xpreward[myself] = 100
	    global.goldreward[myself] = 140
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.MadMewMew)
	{
	    global.monstername[myself] = scr_gettext("monstername_77")
	    global.monstermaxhp[myself] = 700
	    global.monsterhp[myself] = 700
	    global.monsteratk[myself] = 9
	    global.monsterdef[myself] = 0
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.SoSorry)
	{
	    global.monstername[myself] = scr_gettext("monstername_80")
	    global.monstermaxhp[myself] = 1100
	    global.monsterhp[myself] = 1100
	    global.monsteratk[myself] = 9
	    global.monsterdef[myself] = -6
	    global.xpreward[myself] = 1
	    global.goldreward[myself] = 300
	    global.itemrewardid = 1
	    global.itemrewardchance = 50
	}
	if (global.monstertype[myself] == MonsterType.Doodlebog)
	{
	    global.monstername[myself] = scr_gettext("monstername_81")
	    global.monstermaxhp[myself] = 100
	    global.monsterhp[myself] = 100
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.AsrielDreemurr)
	{
	    global.monstername[myself] = scr_gettext("monstername_99")
	    global.monstermaxhp[myself] = 9999
	    global.monsterhp[myself] = 9999
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 9999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Asriel)
	{
	    global.monstername[myself] = scr_gettext("monstername_100")
	    global.monstermaxhp[myself] = 9999
	    global.monsterhp[myself] = 9999
	    global.monsteratk[myself] = 8
	    global.monsterdef[myself] = 9999
	    global.xpreward[myself] = 0
	    global.goldreward[myself] = 0
	    global.itemrewardid = 0
	    global.itemrewardchance = 0
	}
	if (global.monstertype[myself] == MonsterType.Gaster)
	{
	    global.monstername[myself] = scr_gettext("monstername_666")
	    global.monstermaxhp[myself] = 666666
	    global.monsterhp[myself] = 666666
	    global.monsteratk[myself] = 66666
	    global.monsterdef[myself] = 66666
	    global.xpreward[myself] = -6666
	    global.goldreward[myself] = -6666
	    global.itemrewardid = 666
	    global.itemrewardchance = 666
	}
}
