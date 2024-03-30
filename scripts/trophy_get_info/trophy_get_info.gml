/// @func trophy_get_info(trophyName)
/// @arg	{string}	trophyName
/// @return	{Array}
function trophy_get_info(_trophyName)
{
	switch(_trophyName)
	{
		case "item_1":
			return [ "0", "Don't Worry, I Have Lots of Ideas for Trophies", "Get an item." ];
		case "item_2":
			return [ "0", "Like Getting Items", "Get two items." ];
		case "item_3":
			return [ "0", "Or Getting More Items", "Get three items." ];
		case "item_4":
			return [ "1", "Help Me, I'm Out of Ideas", "Get four items" ];
		case "ruins":
			return [ "0", "Ruins", "Enter the Ruins." ];
		case "mouse":
			return [ "0", "Mouse", "Reach the mouse hole in the Ruins." ];
		case "tundra":
			return [ "0", "Exodus", "Arrive at Snowdin." ];
		case "spaghetti":
			return [ "1", "Manna", "Get to the Spaghetti save point in Snowdin." ];
		case "water":
			return [ "1", "Midpoint", "Arrive at Waterfall." ];
		case "rain":
			return [ "1", "Rain", "Reach the place where it rains." ];
		case "fire":
			return [ "1", "Final Stretch", "Enter Hotland." ];
		case "fire_2":
			return [ "1", "Final Stretch II", "Reach Hotland 2F." ];
		case "fire_3":
			return [ "2", "Final Stretch III", "Reach Hotland 3F." ];
		case "core":
			return [ "2", "Good Luck", "Reach the second save point in the CORE." ];
		case "donate_1":
			return [ "0", "Dognation Level 1", "Donate 2G to the Dog Shrine." ];
		case "donate_2":
			return [ "0", "Dognation Level 2", "Donate 6G to the Dog Shrine." ];
		case "donate_3":
			return [ "0", "Dognation Level 3", "Donate 12G to the Dog Shrine." ];
		case "donate_4":
			return [ "0", "Dognation Level 4", "Donate 20G to the Dog Shrine." ];
		case "donate_5":
			return [ "0", "Dognation Level 5", "Donate 30G to the Dog Shrine." ];
		case "donate_6":
			return [ "0", "Dognation Level 6", "Donate 43G to the Dog Shrine." ];
		case "donate_7":
			return [ "0", "Dognation Level 7", "Donate 59G to the Dog Shrine." ];
		case "donate_8":
			return [ "0", "Dognation Level 8", "Donate 78G to the Dog Shrine." ];
		case "donate_9":
			return [ "1", "Dognation Level 9", "Donate 100G to the Dog Shrine." ];
		case "donate_10":
			return [ "1", "Dognation Level 10", "Donate 125G to the Dog Shrine." ];
		case "donate_11":
			return [ "1", "Dognation Level 11", "Donate 155G to the Dog Shrine." ];
		case "donate_12":
			return [ "1", "Dognation Level 12", "Donate 190G to the Dog Shrine." ];
		case "donate_13":
			return [ "1", "Dognation Level 13", "Donate 230G to the Dog Shrine." ];
		case "donate_14":
			return [ "1", "Dognation Level 14", "Donate 280G to the Dog Shrine." ];
		case "donate_15":
			return [ "1", "Dognation Level 14", "Donate 350G to the Dog Shrine." ];
			
		case "got_all_trophies":
			return [ "4", "Don't You Have Anything Better to Do?", "Obtain all other Undertale trophies." ];
		default:
			return [ "0", "Trophy text not set!" ];
			break;
	}
}