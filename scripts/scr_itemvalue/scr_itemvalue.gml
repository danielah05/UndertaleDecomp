/// @func	scr_itemvalue()
/// @desc	Script used in Tem Shop to check how much Gold you get from selling a specific Item
function scr_itemvalue()
{
	for (i = 0; i < InventorySize; i += 1)
	{
	    itemid = global.item[i]
	    value[i] = 0
	    switch itemid
	    {
	        case Items.MonsterCandy:
	            value[i] = 25
	            break
	        case Items.CroquetRoll:
	            value[i] = 10
	            break
	        case Items.Stick:
	            value[i] = 150
	            break
	        case Items.Bandage:
	            value[i] = 150
	            break
	        case Items.RockCandy:
	            value[i] = 3
	            break
	        case Items.PumpkinRings:
	            value[i] = 3
	            break
	        case Items.SpiderDonut:
	            value[i] = 30
	            break
	        case Items.StoicOnion:
	            value[i] = 10
	            break
	        case Items.GhostFruit:
	            value[i] = 10
	            break
	        case Items.SpiderCider:
	            value[i] = 60
	            break
	        case Items.ButterscotchPie:
	            value[i] = 180
	            break
	        case Items.FadedRibbon:
	            value[i] = 100
	            break
	        case Items.ToyKnife:
	            value[i] = 100
	            break
	        case Items.ToughGlove:
	            value[i] = 50
	            break
	        case Items.ManlyBandanna:
	            value[i] = 50
	            break
	        case Items.SnowmanPiece:
	            value[i] = 40
	            break
	        case Items.NiceCream:
	            value[i] = 2
	            break
	        case Items.PuppydoughIceCream:
	            value[i] = 2
	            break
	        case Items.Bisicle:
	            value[i] = 5
	            break
	        case Items.Unisicle:
	            value[i] = 2
	            break
	        case Items.CinnamonBun:
	            value[i] = 8
	            break
	        case Items.TemmieFlakes:
	            value[i] = 2
	            break
	        case Items.AbandonedQuiche:
	            value[i] = 76
	            break
	        case Items.OldTutu:
	            value[i] = 80
	            break
	        case Items.BalletShoes:
	            value[i] = 80
	            break
	        case Items.PunchCard:
	            value[i] = 15
	            break
	        case Items.AnnoyingDog:
	            value[i] = 999
	            break
	        case Items.DogSalad:
	            value[i] = 8
	            break
	        case Items.DogResidue29:
	            value[i] = 3
	            break
	        case Items.DogResidue30:
	            value[i] = 2
	            break
	        case Items.DogResidue31:
	            value[i] = 4
	            break
	        case Items.DogResidue32:
	            value[i] = 1
	            break
	        case Items.DogResidue33:
	            value[i] = 4
	            break
	        case Items.DogResidue34:
	            value[i] = 3
	            break
	        case Items.AstronautFood:
	            value[i] = 25
	            break
	        case Items.InstantNoodles:
	            value[i] = 50
	            break
	        case Items.CrabApple:
	            value[i] = 5
	            break
	        case Items.HotDog:
	            value[i] = 10
	            break
	        case Items.HotCat:
	            value[i] = 11
	            break
	        case Items.Glamburger:
	            value[i] = 15
	            break
	        case Items.SeaTea:
	            value[i] = 5
	            break
	        case Items.Starfait:
	            value[i] = 10
	            break
	        case Items.LegendaryHero:
	            value[i] = 40
	            break
	        case Items.ButtyGlasses:
	            value[i] = 50
	            break
	        case Items.TornNotebook:
	            value[i] = 50
	            break
	        case Items.StainedApron:
	            value[i] = 100
	            break
	        case Items.BurntPan:
	            value[i] = 100
	            break
	        case Items.CowboyHat:
	            value[i] = 100
	            break
	        case Items.EmptyGun:
	            value[i] = 100
	            break
	        case Items.HeartLocket:
	            value[i] = 250
	            break
	        case Items.WornDagger:
	            value[i] = 250
	            break
	        case Items.RealKnife:
	            value[i] = 500
	            break
	        case Items.TheLocket:
	            value[i] = 500
	            break
	        case Items.BadMemory:
	            value[i] = 300
	            break
	        case Items.Dream:
	            value[i] = 250
	            break
	        case Items.UndynesLetter:
	            value[i] = -1
	            break
	        case Items.UndynesLetterEX:
	            value[i] = -1
	            break
	        case Items.PopatoChisps:
	            value[i] = 35
	            break
	        case Items.JunkFood:
	            value[i] = 1
	            break
	        case Items.MysteryKey:
	            value[i] = -1
	            break
	        case Items.FaceSteak:
	            value[i] = 14
	            break
	        case Items.HushPuppy:
	            value[i] = 150
	            break
	        case Items.SnailPie:
	            value[i] = 350
	            break
	        case Items.TemyArmor:
	            value[i] = 500
	            break
	    }
	
	}
}
