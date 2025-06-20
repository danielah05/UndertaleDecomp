/// @func	scr_loadcredits()
/// @desc	Loads the endings credits either using a file or using an array.
/// @returns	{real}
function scr_loadcredits()
{
	var credamt = 0
	if (global.osflavor <= OSFlavors.Mac)
	{
		var credits_path = (working_directory + "credits.txt")
		var credfile = file_text_open_read(credits_path)
		while (!file_text_eof(credfile))
		{
			var thiscred = file_text_read_string(credfile)
			if (thiscred == "%%%")
				break
			else
			{
				creditname[credamt++] = thiscred
				file_text_readln(credfile)
				continue
			}
		}
		file_text_close(credfile)
	}
	else
	{
		creditname[credamt++] = "Tom Dickinson"
		creditname[credamt++] = "Gigi D.G."
		creditname[credamt++] = "pinetone"
		creditname[credamt++] = "Rich"
		creditname[credamt++] = "Sarah Katz"
		creditname[credamt++] = "Heidi Mandelin"
		creditname[credamt++] = "Michael Driscoll"
		creditname[credamt++] = "Magnolia Porter"
		creditname[credamt++] = "Paul Starr"
		creditname[credamt++] = "Lindsey Dawn"
		creditname[credamt++] = "ipgd"
		creditname[credamt++] = "Tim Stowell"
		creditname[credamt++] = "Celene Talbain"
		creditname[credamt++] = "Homer Turgeon"
		creditname[credamt++] = "VickyBit"
		creditname[credamt++] = "Trysta"
		creditname[credamt++] = "poetfox"
		creditname[credamt++] = "Noah Hipster Champoux"
		creditname[credamt++] = "Evan"
		creditname[credamt++] = "Bethany D"
		creditname[credamt++] = "Joss Turner"
		creditname[credamt++] = "Cammie"
		creditname[credamt++] = "blurds"
		creditname[credamt++] = "Joel MacFadyen"
		creditname[credamt++] = "ZyvilinShmo"
		creditname[credamt++] = "MESeele"
		creditname[credamt++] = "Tara Levin"
		creditname[credamt++] = "Misty De Meo"
		creditname[credamt++] = "Cherie Heiberg"
		creditname[credamt++] = "Meles Badger"
		creditname[credamt++] = "Stephen Hammack"
		creditname[credamt++] = "Dan Rodgers"
		creditname[credamt++] = "Jessica Campanella"
		creditname[credamt++] = "Holly Boismaison"
		creditname[credamt++] = "rasira venrir"
		creditname[credamt++] = "Jenkins"
		creditname[credamt++] = "Andrew"
		creditname[credamt++] = "Sam Kennedy"
		creditname[credamt++] = "Anthony Bulldis"
		creditname[credamt++] = "HoneyNoahh"
		creditname[credamt++] = "Iscariot"
		creditname[credamt++] = "Ashley Bernard"
		creditname[credamt++] = "Megan MacLennan"
		creditname[credamt++] = "Malefact"
		creditname[credamt++] = "Allison Wilder"
		creditname[credamt++] = "Nicole Devine"
		creditname[credamt++] = "Marcus Perrin"
		creditname[credamt++] = "Lan-Anh Nguyen"
		creditname[credamt++] = "Lewis Johnson"
		creditname[credamt++] = "Jon Renish"
		creditname[credamt++] = "Jason Withrow"
		creditname[credamt++] = "Adam Saulis"
		creditname[credamt++] = "Kellen Haney"
		creditname[credamt++] = "Stephanie Flynn"
		creditname[credamt++] = "ikks"
		creditname[credamt++] = "Adam C. Hartling"
		creditname[credamt++] = "Abbey Northcutt"
		creditname[credamt++] = "Yuan Mori"
		creditname[credamt++] = "bitmap"
		creditname[credamt++] = "Alex 'Shinkada' Weiss"
		creditname[credamt++] = "Aaron Goodier"
		creditname[credamt++] = "Josh Meier"
		creditname[credamt++] = "Eric Berg"
		creditname[credamt++] = "Joni Kittaka"
		creditname[credamt++] = "Taylor Gregory"
		creditname[credamt++] = "Christina Skyles"
		creditname[credamt++] = "Thomas Castiglione"
		creditname[credamt++] = "Skulryk"
		creditname[credamt++] = "Madolyn Covill"
		creditname[credamt++] = "David Kinne"
		creditname[credamt++] = "Laurence D."
		creditname[credamt++] = "Helen George Mclean"
		creditname[credamt++] = "Common_Sense"
		creditname[credamt++] = "Jui-Ting Victor Hsu"
		creditname[credamt++] = "Caitlyn C."
		creditname[credamt++] = "falmith"
		creditname[credamt++] = "Peter"
		creditname[credamt++] = "Matt Starsoneck"
		creditname[credamt++] = "hgemyd"
		creditname[credamt++] = "FUJITA"
		creditname[credamt++] = "Chris"
		creditname[credamt++] = "Sam & Jetz"
		creditname[credamt++] = "Beth A Lawhead"
		creditname[credamt++] = "David Ewen"
		creditname[credamt++] = "Kulu"
		creditname[credamt++] = "Snorri S."
		creditname[credamt++] = "UnLondon"
		creditname[credamt++] = "Mary Marquardt"
		creditname[credamt++] = "Anthony Thrun"
		creditname[credamt++] = "Brian Lee"
		creditname[credamt++] = "Christopher Stringari"
		creditname[credamt++] = "Saiai"
		creditname[credamt++] = "belbeeno"
		creditname[credamt++] = "tinaun"
		creditname[credamt++] = "Gisele Jobateh"
		creditname[credamt++] = "Max Ponoroff"
		creditname[credamt++] = "Abhilash Sarhadi"
		creditname[credamt++] = "NamelessPFG"
		creditname[credamt++] = "Mark Khai Vinh Tran"
		creditname[credamt++] = "lupusdraconis"
		creditname[credamt++] = "Joshua Van Der Sluys"
		creditname[credamt++] = "Kiuxi"
		creditname[credamt++] = "Nich Maragos"
		creditname[credamt++] = "Joshua Franklin"
		creditname[credamt++] = "Michael Barfuss"
		creditname[credamt++] = "Mikker"
		creditname[credamt++] = "Michael James Orton"
		creditname[credamt++] = "sinisterandroid"
		creditname[credamt++] = "clairvoire"
		creditname[credamt++] = "Ali Khan"
		creditname[credamt++] = "Ashleigh Ellis"
		creditname[credamt++] = "Paul Tayloe"
		creditname[credamt++] = "[NAME REDACTED]"
		creditname[credamt++] = "fuzzytipsy"
		creditname[credamt++] = "Jesse Knowles"
		creditname[credamt++] = "Jeremy Vigil"
		creditname[credamt++] = "conceptofzero"
		creditname[credamt++] = "Albruna"
		creditname[credamt++] = "Brett P."
		creditname[credamt++] = "Cirr"
		creditname[credamt++] = "Tailszefox"
		creditname[credamt++] = "Jamie Jellybean"
		creditname[credamt++] = "litemagic"
		creditname[credamt++] = "Shaimaa Kandil"
		creditname[credamt++] = "Aatmaja Pandya"
		creditname[credamt++] = "TheMajinZenki"
		creditname[credamt++] = "John Ogden"
		creditname[credamt++] = "Linnet"
		creditname[credamt++] = "Matthew Wright"
		creditname[credamt++] = "Zack Jenkins"
		creditname[credamt++] = "Mizakido"
		creditname[credamt++] = "Jacob Bang"
		creditname[credamt++] = "Morbi"
		creditname[credamt++] = "Ryan Phelan"
		creditname[credamt++] = "Benjamin Roush"
		creditname[credamt++] = "elementnumber46"
		creditname[credamt++] = "Steven Dirks"
		creditname[credamt++] = "Bill King"
		creditname[credamt++] = "Juan Miguel Exposito"
		creditname[credamt++] = "Emily Kilbourn"
		creditname[credamt++] = "Luca Frigerio"
		creditname[credamt++] = "Chenille"
		creditname[credamt++] = "Clare Jones"
		creditname[credamt++] = "Daniel Lin"
		creditname[credamt++] = "Emily Elliott"
		creditname[credamt++] = "Kinko Kitty"
		creditname[credamt++] = "Elementoid"
		creditname[credamt++] = "blueskybleu"
		creditname[credamt++] = "Rebekah Holder"
		creditname[credamt++] = "Emily Kidney"
		creditname[credamt++] = "Steven Benson"
		creditname[credamt++] = "Westin Grube"
		creditname[credamt++] = "JNH"
		creditname[credamt++] = "Bob Thulfram"
		creditname[credamt++] = "Drake Himmel"
		creditname[credamt++] = "Jacquerel"
		creditname[credamt++] = "Leo Garcia"
		creditname[credamt++] = "Eric"
		creditname[credamt++] = "Tyler Merta"
		creditname[credamt++] = "Nidoking"
		creditname[credamt++] = "Thomas Knies"
		creditname[credamt++] = "alexander gross"
		creditname[credamt++] = "Julian"
		creditname[credamt++] = "Tom Casacoli"
		creditname[credamt++] = "Daniel Whitcomb"
		creditname[credamt++] = "Cameron McClure"
		creditname[credamt++] = "D C"
		creditname[credamt++] = "Shanti Elliot"
		creditname[credamt++] = "Lindsey Dohse"
		creditname[credamt++] = "Asharaxx"
		creditname[credamt++] = "Ryusui"
		creditname[credamt++] = "Iguana Baritone"
		creditname[credamt++] = "Shelby Cragg"
		creditname[credamt++] = "Greer"
		creditname[credamt++] = "Michael Crow"
		creditname[credamt++] = "Andrew \"Southrop\" Li"
		creditname[credamt++] = "Bec"
		creditname[credamt++] = "Sara Massoud"
		creditname[credamt++] = "Mark"
		creditname[credamt++] = "lucaaa"
		creditname[credamt++] = "Justin"
		creditname[credamt++] = "Luke Stebbing"
		creditname[credamt++] = "Ozymandias J. Llewellyn x3"
		creditname[credamt++] = "Andrew Neufeld"
		creditname[credamt++] = "aaron corff"
		creditname[credamt++] = "Griffin Donohue"
		creditname[credamt++] = "Vanessah Howard"
		creditname[credamt++] = "Michael Todhunter"
		creditname[credamt++] = "Angel Lorenzana"
		creditname[credamt++] = "BlueLucine"
		creditname[credamt++] = "Brian Jaworski"
		creditname[credamt++] = "Edward Davyduck"
		creditname[credamt++] = "Adina"
		creditname[credamt++] = "Daniel O'Rourke"
		creditname[credamt++] = "IdleDice"
		creditname[credamt++] = "TallTale"
		creditname[credamt++] = "Marc"
		creditname[credamt++] = "Leora San Miguel"
		creditname[credamt++] = "Sam Mancuso"
		creditname[credamt++] = "Joseph Michael Hanna"
		creditname[credamt++] = "Nearby Night"
		creditname[credamt++] = "Jake Lindsey"
		creditname[credamt++] = "John Spiers"
		creditname[credamt++] = "The_Mailman"
		creditname[credamt++] = "Robert Remmers"
		creditname[credamt++] = "Richard Hough"
		creditname[credamt++] = "Chris McLernon"
		creditname[credamt++] = "Gadgetprop"
		creditname[credamt++] = "Craig Fotheringham"
		creditname[credamt++] = "W. Tyler"
		creditname[credamt++] = "Tyler Kassten"
		creditname[credamt++] = "Crettert"
		creditname[credamt++] = "saturnineCarrier"
		creditname[credamt++] = "Kevin Grasso"
		creditname[credamt++] = "Raive"
		creditname[credamt++] = "Nathaniel Shannon"
		creditname[credamt++] = "GameFreakerZero"
		creditname[credamt++] = "William Manning"
		creditname[credamt++] = "Bradley Synnett"
		creditname[credamt++] = "Matoos"
		creditname[credamt++] = "Michael McCann"
		creditname[credamt++] = "Daniel"
		creditname[credamt++] = "Nezumi"
		creditname[credamt++] = "Sol_Racht"
		creditname[credamt++] = "Matthew Frieling"
		creditname[credamt++] = "Matt Pappadopoli"
		creditname[credamt++] = "Sara \"Svenna\" Ventura"
		creditname[credamt++] = "Daniel A. Johnson"
		creditname[credamt++] = "Rachel Moody"
		creditname[credamt++] = "Ken Laird"
		creditname[credamt++] = "Sarkazein"
		creditname[credamt++] = "Roisin Cowans"
		creditname[credamt++] = "Ross Ashley"
		creditname[credamt++] = "Michelle Smith"
		creditname[credamt++] = "Nikita Dudnik"
		creditname[credamt++] = "Brandon Evans"
		creditname[credamt++] = "Cubesona"
		creditname[credamt++] = "Ross Williams"
		creditname[credamt++] = "Steven Wallace"
		creditname[credamt++] = "Gwion Hamblin"
		creditname[credamt++] = "Ben Evans"
		creditname[credamt++] = "Ryunney"
		creditname[credamt++] = "Sean S Barber"
		creditname[credamt++] = "Samantha Ludwig"
		creditname[credamt++] = "Johnathan Fisico"
		creditname[credamt++] = "Spartyblb"
		creditname[credamt++] = "Scott Johnson"
		creditname[credamt++] = "David Gilbert"
		creditname[credamt++] = "Sebastian Browne"
		creditname[credamt++] = "Crafall"
		creditname[credamt++] = "Jonathon Hickey"
		creditname[credamt++] = "Ian Clark"
		creditname[credamt++] = "Alexis"
		creditname[credamt++] = "Zhong Thai"
		creditname[credamt++] = "James Klingler"
		creditname[credamt++] = "Sean Chiplock"
		creditname[credamt++] = "Hannah C"
		creditname[credamt++] = "Scott Whipkey"
		creditname[credamt++] = "Brian Allred"
		creditname[credamt++] = "Tollymain"
		creditname[credamt++] = "Michael Amirault"
		creditname[credamt++] = "Rik Nicol"
		creditname[credamt++] = "Anthony L."
		creditname[credamt++] = "YggiDee"
		creditname[credamt++] = "Ryunosuke"
		creditname[credamt++] = "Aidan Schwarz"
		creditname[credamt++] = "Mathew Hunter"
		creditname[credamt++] = "Alexander Privee"
		creditname[credamt++] = "Adam T Wilk"
		creditname[credamt++] = "Steven White"
		creditname[credamt++] = "Isaac Haugen"
		creditname[credamt++] = "Sean \"Ariamaki\" Riedinger"
		creditname[credamt++] = "Michael Mudokon"
		creditname[credamt++] = "Rogelio"
		creditname[credamt++] = "Yoshoshishu"
		creditname[credamt++] = "Caitlin"
		creditname[credamt++] = "Brian"
		creditname[credamt++] = "Dmitriy Aleksandrovich Sadikov"
		creditname[credamt++] = "Steven Heydt"
		creditname[credamt++] = "mwchase"
		creditname[credamt++] = "Enok Moe"
		creditname[credamt++] = "Alex B."
		creditname[credamt++] = "SamWibatt"
		creditname[credamt++] = "Daniel Kelly"
		creditname[credamt++] = "Gino Tote"
		creditname[credamt++] = "Chris Zito"
		creditname[credamt++] = "Daniel Turner"
		creditname[credamt++] = "Katlynn Balderstone"
		creditname[credamt++] = "spoonshiro"
		creditname[credamt++] = "Andrew Muellerleile"
		creditname[credamt++] = "Nir Aviv"
		creditname[credamt++] = "starwyvern"
		creditname[credamt++] = "Danzig!"
		creditname[credamt++] = "Daniel Hinman"
		creditname[credamt++] = "Nick Perry"
		creditname[credamt++] = "Triggernometry"
		creditname[credamt++] = "Mark Jessey"
		creditname[credamt++] = "Charles Cole"
		creditname[credamt++] = "Zero!"
		creditname[credamt++] = "FrankieSmileShow"
		creditname[credamt++] = "Sheldon Whalley"
		creditname[credamt++] = "Grigoriy Kovalenko"
		creditname[credamt++] = "ZuZuBe"
		creditname[credamt++] = "Noelemahc"
		creditname[credamt++] = "picassowary"
		creditname[credamt++] = "Kevin Robertson"
		creditname[credamt++] = "Dark Star"
		creditname[credamt++] = "kg"
		creditname[credamt++] = "knaji"
		creditname[credamt++] = "Robert Schultz"
		creditname[credamt++] = "chaosprime"
		creditname[credamt++] = "Jarod Crockett"
		creditname[credamt++] = "Shea True"
		creditname[credamt++] = "XainZero (Ian)"
		creditname[credamt++] = "Sophia"
		creditname[credamt++] = "mary borsellino"
		creditname[credamt++] = "NatSquid"
		creditname[credamt++] = "Conal Chan"
		creditname[credamt++] = "Jake Kaplan"
		creditname[credamt++] = "Brian"
		creditname[credamt++] = "Zobot257"
		creditname[credamt++] = "Christopher Woodside"
		creditname[credamt++] = "Stephen DeCubellis"
		creditname[credamt++] = "Nigel Nelson"
		creditname[credamt++] = "Kelly L. Hoins"
		creditname[credamt++] = "Anthony Daniels"
		creditname[credamt++] = "Alex Ladzinski"
		creditname[credamt++] = "Matthew Myers"
		creditname[credamt++] = "RH"
		creditname[credamt++] = "Stephen Keating"
		creditname[credamt++] = "Lawrence Kern"
		creditname[credamt++] = "Budi S"
		creditname[credamt++] = "Detour"
		creditname[credamt++] = "eLe"
		creditname[credamt++] = "Justin S"
		creditname[credamt++] = "Eric Kramer"
		creditname[credamt++] = "Kassie"
		creditname[credamt++] = "MJ Lee"
		creditname[credamt++] = "Erica"
		creditname[credamt++] = "Joshua Keaton"
		creditname[credamt++] = "bugmeetrock"
		creditname[credamt++] = "Rigrot"
		creditname[credamt++] = "Sam Parwar"
		creditname[credamt++] = "Mark Grandstaff"
		creditname[credamt++] = "MirMir"
		creditname[credamt++] = "Abigail Fox"
		creditname[credamt++] = "Phyllis Douglas"
		creditname[credamt++] = "Bernard Rebours"
		creditname[credamt++] = "PF Anderson"
		creditname[credamt++] = "Micah Jones"
		creditname[credamt++] = "grace genter"
		creditname[credamt++] = "Dan"
		creditname[credamt++] = "Ian Matthew Michael Burg"
		creditname[credamt++] = "EmbryonJen"
		creditname[credamt++] = "N Weismuller"
		creditname[credamt++] = "Nick McVroom-Amoakohene"
		creditname[credamt++] = "adam debany"
		creditname[credamt++] = "Bridget Rog"
		creditname[credamt++] = "Darren Sampson"
		creditname[credamt++] = "Stephen"
		creditname[credamt++] = "Patrick Ellis"
		creditname[credamt++] = "Doofus"
		creditname[credamt++] = "Demyx"
		creditname[credamt++] = "V. Ventura"
		creditname[credamt++] = "Stephen Petraeus"
		creditname[credamt++] = "Zack Corcoran"
		creditname[credamt++] = "Jc Edualino"
		creditname[credamt++] = "Bjorn Schenke"
		creditname[credamt++] = "Zorak"
		creditname[credamt++] = "Professor Icepick"
		creditname[credamt++] = "Michael Lekon"
		creditname[credamt++] = "Martin Coxall"
		creditname[credamt++] = "Abby Lusk"
		creditname[credamt++] = "Josh Bailey"
		creditname[credamt++] = "Yaiba Saya"
		creditname[credamt++] = "Matthew"
		creditname[credamt++] = "Benjamin \"BenaSPACE\" McQueen"
		creditname[credamt++] = "J. A. Salazar"
		creditname[credamt++] = "Omni Desol"
		creditname[credamt++] = "Stephen Celis"
		creditname[credamt++] = "Zhe Zhou"
		creditname[credamt++] = "Jon South"
		creditname[credamt++] = "Jessica H."
		creditname[credamt++] = "Pedro T."
		creditname[credamt++] = "Sarah Jensen"
		creditname[credamt++] = "Aaron"
		creditname[credamt++] = "Lorenzo Canales"
		creditname[credamt++] = "Sekojo"
		creditname[credamt++] = "Evan Carter"
		creditname[credamt++] = "Kralec"
		creditname[credamt++] = "Christian Hopwood"
		creditname[credamt++] = "Kenneth Sloane"
		creditname[credamt++] = "ascasc"
		creditname[credamt++] = "Jonathan Fu"
		creditname[credamt++] = "Charles"
		creditname[credamt++] = "leif olofsson"
		creditname[credamt++] = "Dan Henry Langgaard"
		creditname[credamt++] = "Ean L. Roth"
		creditname[credamt++] = "Corban Andrew Coffman"
		creditname[credamt++] = "James E Richmond"
		creditname[credamt++] = "Ketchupface"
		creditname[credamt++] = "SA，ren MoskjA|r Lauridsen"
		creditname[credamt++] = "Christopher Jose"
		creditname[credamt++] = "Russell Deitch"
		creditname[credamt++] = "Xan Wetherall"
		creditname[credamt++] = "Chris B."
		creditname[credamt++] = "OatmealRaisin"
		creditname[credamt++] = "Edlyn \"Xisuu\" Si"
		creditname[credamt++] = "Mark"
		creditname[credamt++] = "Nikolaj Lyhne"
		creditname[credamt++] = "Thorvald Natvig"
		creditname[credamt++] = "William McKinley"
		creditname[credamt++] = "Chris Marten"
		creditname[credamt++] = "Mark Keating"
		creditname[credamt++] = "Steve Johnson"
		creditname[credamt++] = "Sean Gaddis"
		creditname[credamt++] = "Matthew Lane"
		creditname[credamt++] = "Jack Sharples"
		creditname[credamt++] = "Kinetic Gibbon"
		creditname[credamt++] = "Chris Bernardi"
		creditname[credamt++] = "Jeff Bartus"
		creditname[credamt++] = "Lee Tantral"
		creditname[credamt++] = "duibucbuc"
		creditname[credamt++] = "Jeremy Swanson"
		creditname[credamt++] = "Lily Sears"
		creditname[credamt++] = "clintdaley"
		creditname[credamt++] = "Dave Burkett"
		creditname[credamt++] = "Justin Moor"
		creditname[credamt++] = "Cei Reid"
		creditname[credamt++] = "M B"
		creditname[credamt++] = "JWagner"
		creditname[credamt++] = "Jonathan \"ChessboardMan\" Barrett"
		creditname[credamt++] = "Paul Emile Gerard"
		creditname[credamt++] = "Gunnar Hogberg"
		creditname[credamt++] = "Adam Rajski"
		creditname[credamt++] = "Bliss Provo"
		creditname[credamt++] = "Charles \"Chip Champion\" Rogers III"
		creditname[credamt++] = "Vivian W."
		creditname[credamt++] = "Gregory Johnson"
		creditname[credamt++] = "Zachary \"ZarroTsu\" Baillie"
		creditname[credamt++] = "Bongi Chirunga"
		creditname[credamt++] = "Marcus"
		creditname[credamt++] = "Lauran Parise"
		creditname[credamt++] = "Kevin T McAllister"
		creditname[credamt++] = "Kevin Ramsay"
		creditname[credamt++] = "Cody Guthrie"
		creditname[credamt++] = "Erik Johnson"
		creditname[credamt++] = "Amelia Li"
		creditname[credamt++] = "Togglesworlh"
		creditname[credamt++] = "Will \"Radnar\" Kilgore"
		creditname[credamt++] = "Wright Johnson"
		creditname[credamt++] = "Nicholas Cuccherini"
		creditname[credamt++] = "Daniel Mauterer"
		creditname[credamt++] = "Richard"
		creditname[credamt++] = "Austin Szabo"
		creditname[credamt++] = "Stephanie Rainey"
		creditname[credamt++] = "Brandon Garlock"
		creditname[credamt++] = "Glen Than"
		creditname[credamt++] = "Nathaniel Tabit"
		creditname[credamt++] = "Elias Thompson"
		creditname[credamt++] = "David Wagner"
		creditname[credamt++] = "Thomas Cain"
		creditname[credamt++] = "Jaymark108"
		creditname[credamt++] = "Irregular"
		creditname[credamt++] = "Christian Walde"
		creditname[credamt++] = "Luca Hibbard-Curto"
		creditname[credamt++] = "Alexis Carpenter"
		creditname[credamt++] = "Kevin Portland"
		creditname[credamt++] = "BIGlittleBot"
		creditname[credamt++] = "droqen"
		creditname[credamt++] = "Matthew Robert Shanahan"
		creditname[credamt++] = "Matthew Dobbins"
		creditname[credamt++] = "Christopher J. Barnes"
		creditname[credamt++] = "Arlin"
		creditname[credamt++] = "Michael Bosmeny"
		creditname[credamt++] = "Nick Pereira"
		creditname[credamt++] = "Erin Tucker"
		creditname[credamt++] = "Eddie Anzore"
		creditname[credamt++] = "Christopher Grant"
		creditname[credamt++] = "Giordano Caputi"
		creditname[credamt++] = "Gerard Remy"
		creditname[credamt++] = "Pascal De Lisio"
		creditname[credamt++] = "Manny"
		creditname[credamt++] = "Brian Mathews"
		creditname[credamt++] = "Jonathan Catbus"
		creditname[credamt++] = "Per Kristian Brastad"
		creditname[credamt++] = "Christopher David Wilson"
		creditname[credamt++] = "CrisisSDK"
		creditname[credamt++] = "John Michel"
		creditname[credamt++] = "Darkk the Dragon"
		creditname[credamt++] = "Eduardo Ruiz"
		creditname[credamt++] = "Donna Johnson"
		creditname[credamt++] = "Gletschen"
		creditname[credamt++] = "Tiara Lieber"
		creditname[credamt++] = "Kalt"
		creditname[credamt++] = "Hannah"
		creditname[credamt++] = "Chris Backhuus"
		creditname[credamt++] = "Sketcherism"
		creditname[credamt++] = "Denzel Jackson Ewing"
		creditname[credamt++] = "Xiagu"
		creditname[credamt++] = "Stephanie Shofner"
		creditname[credamt++] = "mitchbee"
		creditname[credamt++] = "Draconaes"
		creditname[credamt++] = "Martin \"AT\" Stewart"
		creditname[credamt++] = "Tom"
		creditname[credamt++] = "John W. Bruce"
		creditname[credamt++] = "Andrew Welch"
		creditname[credamt++] = "Nephera"
		creditname[credamt++] = "Van den Bosch Tim"
		creditname[credamt++] = "Ross Mallinson"
		creditname[credamt++] = "Naomi Liew"
		creditname[credamt++] = "Bugmaster"
		creditname[credamt++] = "Joseph Tate"
		creditname[credamt++] = "Tim Sweeney"
		creditname[credamt++] = "Plaid"
		creditname[credamt++] = "Sean Loftus"
		creditname[credamt++] = "Liz H"
		creditname[credamt++] = "Jean-Luc Portelli"
		creditname[credamt++] = "Joel Bourassa"
		creditname[credamt++] = "Zabuni"
		creditname[credamt++] = "Mike Drobnack"
		creditname[credamt++] = "Ree"
		creditname[credamt++] = "Fweiss"
		creditname[credamt++] = "Fleon Labs"
		creditname[credamt++] = "Herr Foxley"
		creditname[credamt++] = "Anthony Bailey"
		creditname[credamt++] = "Jon"
		creditname[credamt++] = "Kazerad"
		creditname[credamt++] = "A Strange Yolk"
		creditname[credamt++] = "Dylan Lacey"
		creditname[credamt++] = "Taylor Haar"
		creditname[credamt++] = "Jose Nieves"
		creditname[credamt++] = "Edward Damon"
		creditname[credamt++] = "Ben P"
		creditname[credamt++] = "Pan"
		creditname[credamt++] = "Torbjorn"
		creditname[credamt++] = "James Carlisle Holder"
		creditname[credamt++] = "James Johnson"
		creditname[credamt++] = "Lyric Chavez"
		creditname[credamt++] = "Matthew Winter"
		creditname[credamt++] = "Pat Lapierre"
		creditname[credamt++] = "Robert Schiewe"
		creditname[credamt++] = "Dave Billington"
		creditname[credamt++] = "Jessica Witt"
		creditname[credamt++] = "Richard Ginter"
		creditname[credamt++] = "Curtis A. Eves \"TehLazyOne\""
		creditname[credamt++] = "Nathan"
		creditname[credamt++] = "Andre Lawton"
		creditname[credamt++] = "Shay"
		creditname[credamt++] = "Lucinda Diaz"
		creditname[credamt++] = "Lawrence Leclercq"
		creditname[credamt++] = "Geight"
		creditname[credamt++] = "Primalmatrix"
		creditname[credamt++] = "David Tersegno"
		creditname[credamt++] = "Togeyosh"
		creditname[credamt++] = "Magnus H."
		creditname[credamt++] = "sarf"
		creditname[credamt++] = "Michael Gazaway"
		creditname[credamt++] = "SeanJBell"
		creditname[credamt++] = "Mara Seaborne"
		creditname[credamt++] = "chloe"
		creditname[credamt++] = "David Funk"
		creditname[credamt++] = "Wolfbender"
		creditname[credamt++] = "Gabriel de Souza Vieira Batista"
		creditname[credamt++] = "Ben Dunmore"
		creditname[credamt++] = "Aori Radidjiu"
		creditname[credamt++] = "Sascha Kolewa"
		creditname[credamt++] = "Zeny Di"
		creditname[credamt++] = "Anthony Garcia"
		creditname[credamt++] = "JD Larson"
		creditname[credamt++] = "Alex Korth"
		creditname[credamt++] = "Mijichu"
		creditname[credamt++] = "Noel"
		creditname[credamt++] = "HC"
		creditname[credamt++] = "Ilma Raupp"
		creditname[credamt++] = "Daniel Roller"
		creditname[credamt++] = "Jesse Whyte"
		creditname[credamt++] = "Trevor"
		creditname[credamt++] = "Craig Crosier"
		creditname[credamt++] = "Klokwurk"
		creditname[credamt++] = "Christian"
		creditname[credamt++] = "jack"
		creditname[credamt++] = "fallintosanity"
		creditname[credamt++] = "Shauna"
		creditname[credamt++] = "wrincewind"
		creditname[credamt++] = "Syl"
		creditname[credamt++] = "Anthony Hanson"
		creditname[credamt++] = "PolyCement"
		creditname[credamt++] = "Snakealiciouz"
		creditname[credamt++] = "William So"
		creditname[credamt++] = "CubicPhantom"
		creditname[credamt++] = "KT Coope"
		creditname[credamt++] = "Michael Ong"
		creditname[credamt++] = "Mezzo"
		creditname[credamt++] = "Skandranon"
		creditname[credamt++] = "Sean Ritzo"
		creditname[credamt++] = "NJinasena"
		creditname[credamt++] = "LakotaWolf"
		creditname[credamt++] = "Sofia Winterbourne"
		creditname[credamt++] = "Christopher Sin"
		creditname[credamt++] = "Half-Assured"
		creditname[credamt++] = "Alessandro Arena-DeRosa"
		creditname[credamt++] = "Julien"
		creditname[credamt++] = "Sleepy Waters"
		creditname[credamt++] = "Kasran"
		creditname[credamt++] = "Michael D'Andrea"
		creditname[credamt++] = "Lauren Smith"
		creditname[credamt++] = "Luke \"Association\" Fox"
		creditname[credamt++] = "Alex Bergquist"
		creditname[credamt++] = "David Wilson"
		creditname[credamt++] = "Galit A."
		creditname[credamt++] = "Jonathan Whyte"
		creditname[credamt++] = "CptSparky"
		creditname[credamt++] = "Michael Hellenbrecht"
		creditname[credamt++] = "smack"
		creditname[credamt++] = "William Boseth Harding"
		creditname[credamt++] = "AImler"
		creditname[credamt++] = "Mads Johansen"
		creditname[credamt++] = "Petter S. Fossum"
		creditname[credamt++] = "Robbie Schoeppner"
		creditname[credamt++] = "CloudySky"
		creditname[credamt++] = "Joseph Golding"
		creditname[credamt++] = "Taime Pschirrer"
		creditname[credamt++] = "Espen Arntzen"
		creditname[credamt++] = "Bryne Oliver"
		creditname[credamt++] = "Desmond Molly Jones"
		creditname[credamt++] = "Josh Breitbart"
		creditname[credamt++] = "Sean O'F"
		creditname[credamt++] = "Dakk Passerida"
		creditname[credamt++] = "annoyed"
		creditname[credamt++] = "W. Kyle Korth"
		creditname[credamt++] = "Jesse Murphy"
		creditname[credamt++] = "Kenneth Cuyugan"
		creditname[credamt++] = "Zaos"
		creditname[credamt++] = "Kyle Fox"
		creditname[credamt++] = "James Harrod"
		creditname[credamt++] = "Michelle"
		creditname[credamt++] = "Grandy Peace"
		creditname[credamt++] = "Sergio"
		creditname[credamt++] = "Richard Van Tassel"
		creditname[credamt++] = "shmorky"
		creditname[credamt++] = "Richard Whittaker"
		creditname[credamt++] = "Zaine Otter"
		creditname[credamt++] = "Tman"
		creditname[credamt++] = "A Swarm of Bees"
		creditname[credamt++] = "Melissa Valen"
		creditname[credamt++] = "em"
		creditname[credamt++] = "Edna Rouse (DiscoKittie)"
		creditname[credamt++] = "Robbie Van de Motter"
		creditname[credamt++] = "Kieran Perreau"
		creditname[credamt++] = "Alissa Lyon"
		creditname[credamt++] = "Jacob Niles"
		creditname[credamt++] = "Sillipenda"
		creditname[credamt++] = "Takkun"
		creditname[credamt++] = "ketwyld"
		creditname[credamt++] = "Carl Salbacka"
		creditname[credamt++] = "Bryan Novak"
		creditname[credamt++] = "Dynamite Man.EXE"
		creditname[credamt++] = "Jason Frizzell"
		creditname[credamt++] = "Eric P. Kurniawan"
		creditname[credamt++] = "Matt Trepal"
		creditname[credamt++] = "nexas777"
		creditname[credamt++] = "Jason and Kai Wodicka"
		creditname[credamt++] = "YP Lim"
		creditname[credamt++] = "PureQuestion"
		creditname[credamt++] = "Anthony Baussard"
		creditname[credamt++] = "Jason Siu"
		creditname[credamt++] = "Malcolm Brown"
		creditname[credamt++] = "Steven Seyler"
		creditname[credamt++] = "David Ellis"
		creditname[credamt++] = "Jesse Lambrecht"
		creditname[credamt++] = "Donald King"
		creditname[credamt++] = "Scott Janicek"
		creditname[credamt++] = "Alexandra Falk"
		creditname[credamt++] = "Alexandre Cleret de Langavant"
		creditname[credamt++] = "Ralphael Krios"
		creditname[credamt++] = "Shawn Y. Lee"
		creditname[credamt++] = "Annie Freeman"
		creditname[credamt++] = "Shane"
		creditname[credamt++] = "Kevin"
		creditname[credamt++] = "Lauren Weisel"
		creditname[credamt++] = "Jonathan Summerton"
		creditname[credamt++] = "Samantha Garcia"
		creditname[credamt++] = "Jonny Torres"
		creditname[credamt++] = "Ephraim Vraspir"
		creditname[credamt++] = "Liam Jones"
		creditname[credamt++] = "Yves Verbeck"
		creditname[credamt++] = "Danny Baggett"
		creditname[credamt++] = "Keegan J. Trenerry"
		creditname[credamt++] = "Eric Kimball"
		creditname[credamt++] = "Ruderabbit"
		creditname[credamt++] = "Evan Copeland"
		creditname[credamt++] = "Autumn Gaffney"
		creditname[credamt++] = "SwordFire"
		creditname[credamt++] = "Spencer Arndt"
		creditname[credamt++] = "Imani Mercedes Brown"
		creditname[credamt++] = "Michael Duralia"
		creditname[credamt++] = "Jennifer Maddux"
		creditname[credamt++] = "VenomChaos"
		creditname[credamt++] = "Melibe"
		creditname[credamt++] = "Brandon Barker"
		creditname[credamt++] = "Matt"
		creditname[credamt++] = "ZepysGirl"
		creditname[credamt++] = "Zachary Cooper"
		creditname[credamt++] = "J M Bondzeleske"
		creditname[credamt++] = "William Bolger"
		creditname[credamt++] = "Kimberly Hartman"
		creditname[credamt++] = "Joe Cardwell"
		creditname[credamt++] = "Justin Kang"
		creditname[credamt++] = "Paul Hedges"
		creditname[credamt++] = "Jacob Hapner"
		creditname[credamt++] = "Jonathan Caridia"
		creditname[credamt++] = "Ahna"
		creditname[credamt++] = "Julian Quirion"
		creditname[credamt++] = "Tay-Tay Dixon"
		creditname[credamt++] = "Tatiana Yamamura"
		creditname[credamt++] = "Edmund Currie"
		creditname[credamt++] = "Kastorr"
		creditname[credamt++] = "Linaru"
		creditname[credamt++] = "Nicholas Bybee"
		creditname[credamt++] = "Henry Branscombe"
		creditname[credamt++] = "Will Raus"
		creditname[credamt++] = "Bertrand Guerin-Williams"
		creditname[credamt++] = "Alexander I Hthiy"
		creditname[credamt++] = "K Stephens"
		creditname[credamt++] = "Jess"
		creditname[credamt++] = "Jacob Koch"
		creditname[credamt++] = "Zero DragonLord"
		creditname[credamt++] = "David Rey"
		creditname[credamt++] = "Dan"
		creditname[credamt++] = "Nathan Goldman"
		creditname[credamt++] = "Ryan Seney"
		creditname[credamt++] = "ky blotky"
		creditname[credamt++] = "Tev Kaber"
		creditname[credamt++] = "Ran Brown"
		creditname[credamt++] = "Ahmed Al-Qassar"
		creditname[credamt++] = "Tamara Baum"
		creditname[credamt++] = "Yuriy Shchebetin"
		creditname[credamt++] = "Joshua Bourgeois"
		creditname[credamt++] = "Robert Blaylock"
		creditname[credamt++] = "Elaine Bonner"
		creditname[credamt++] = "Brianna"
		creditname[credamt++] = "Egon L."
		creditname[credamt++] = "Callum Atchison"
		creditname[credamt++] = "Xan"
		creditname[credamt++] = "Harold Abnabit"
		creditname[credamt++] = "Jeffrey Blair"
		creditname[credamt++] = "John Su"
		creditname[credamt++] = "Riff Conner"
		creditname[credamt++] = "jenica"
		creditname[credamt++] = "Melanie Gaughran"
		creditname[credamt++] = "Ryan Patrick Bell"
		creditname[credamt++] = "Chris Gile"
		creditname[credamt++] = "Kevin Robinson"
		creditname[credamt++] = "Spindrift"
		creditname[credamt++] = "Andres Velasco y Coll"
		creditname[credamt++] = "Rory Fraga"
		creditname[credamt++] = "Peter Dean"
		creditname[credamt++] = "Jack Raines"
		creditname[credamt++] = "Sam Dempster"
		creditname[credamt++] = "Konstantin Goreley"
		creditname[credamt++] = "Christian Rogers"
		creditname[credamt++] = "Greliz"
		creditname[credamt++] = "Demond Rogers"
		creditname[credamt++] = "divineDerivative"
		creditname[credamt++] = "KT Jayne"
		creditname[credamt++] = "Derek Rose"
		creditname[credamt++] = "Mike McGinn"
		creditname[credamt++] = "Ashley Davis"
		creditname[credamt++] = "Ken Jackson"
		creditname[credamt++] = "Leonardo Millan"
		creditname[credamt++] = "Kyle Pinheiro"
		creditname[credamt++] = "EXPotemkin"
		creditname[credamt++] = "Dorian Stanton"
		creditname[credamt++] = "Molly Hayden"
		creditname[credamt++] = "Kevin Clark"
		creditname[credamt++] = "Christopher Wilson"
		creditname[credamt++] = "Ryan Curtis"
		creditname[credamt++] = "Sophia Volpi"
		creditname[credamt++] = "Ted Anderson"
		creditname[credamt++] = "Adam Salek"
		creditname[credamt++] = "Joe Cotnoir"
		creditname[credamt++] = "Kaeti V."
		creditname[credamt++] = "Natasha and Richard"
		creditname[credamt++] = "Olivia"
		creditname[credamt++] = "PJ Trauger"
		creditname[credamt++] = "Mewscaper"
		creditname[credamt++] = "nowmai"
		creditname[credamt++] = "Alp Aziz Torun"
		creditname[credamt++] = "Mark Snyder"
		creditname[credamt++] = "Cole W"
		creditname[credamt++] = "Kevin Huang"
		creditname[credamt++] = "Sharon Isabelle Simmonds"
		creditname[credamt++] = "Elyse Waite"
		creditname[credamt++] = "Kenneth Stephens"
		creditname[credamt++] = "TheDougem"
		creditname[credamt++] = "Henry W Schubert"
		creditname[credamt++] = "Steven Hopkins"
		creditname[credamt++] = "Dustin Williams"
		creditname[credamt++] = "Alex Rhodes"
		creditname[credamt++] = "a series of birds"
		creditname[credamt++] = "Erin H"
		creditname[credamt++] = "Kjorteo Kalante"
		creditname[credamt++] = "Tom Robinson"
		creditname[credamt++] = "Travis Prow"
		creditname[credamt++] = "mythago"
		creditname[credamt++] = "V.S."
		creditname[credamt++] = "Devon Mullane"
		creditname[credamt++] = "Sir Jordi"
		creditname[credamt++] = "elendia"
		creditname[credamt++] = "Adam Chapdelaine"
		creditname[credamt++] = "Aaron Bragg"
		creditname[credamt++] = "Nicholas Muscles Del Guercio"
		creditname[credamt++] = "Jason Schwab"
		creditname[credamt++] = "Jordan Gernsbacher"
		creditname[credamt++] = "Ville Hahtonen"
		creditname[credamt++] = "Gene"
		creditname[credamt++] = "Jacques_Cousteau"
		creditname[credamt++] = "Nicole LaChance"
		creditname[credamt++] = "AbdulAziz Al-Kaboor"
		creditname[credamt++] = "Xkeeper"
		creditname[credamt++] = "Chantal DeAngelo"
		creditname[credamt++] = "Jade Stoughton"
		creditname[credamt++] = "Hanni Brosh"
		creditname[credamt++] = "Mark Stiegemeier"
		creditname[credamt++] = "Stephen Wesley Shannon"
		creditname[credamt++] = "Eric Boot"
		creditname[credamt++] = "Denise"
		creditname[credamt++] = "Maria Annichia Riolo"
		creditname[credamt++] = "Joshua Duray"
		creditname[credamt++] = "Gibbs Moore"
		creditname[credamt++] = "Aaron Kaluszka"
		creditname[credamt++] = "Tyler Roser"
		creditname[credamt++] = "Cody H. Billie"
		creditname[credamt++] = "Jeffrey Harris"
		creditname[credamt++] = "Hunter Billie"
		creditname[credamt++] = "Havana Lapin"
		creditname[credamt++] = "Charly Suess"
		creditname[credamt++] = "Travis Arnold"
		creditname[credamt++] = "Amy Chang"
		creditname[credamt++] = "Jeff Taylor"
		creditname[credamt++] = "shaunkendall"
		creditname[credamt++] = "Casey"
		creditname[credamt++] = "Jesse"
		creditname[credamt++] = "Nick Tiner"
		creditname[credamt++] = "Stephen Shrum"
		creditname[credamt++] = "Nikolas San Lucas"
		creditname[credamt++] = "Chad Bruce"
		creditname[credamt++] = "Kamil Knapczyk"
		creditname[credamt++] = "Elise Ranero"
		creditname[credamt++] = "Nargleflex"
		creditname[credamt++] = "Valerie"
		creditname[credamt++] = "Manuela Saenz"
		creditname[credamt++] = "Larein"
		creditname[credamt++] = "Alicia Garcia"
		creditname[credamt++] = "Rollinstein"
		creditname[credamt++] = "Joshua Winick"
		creditname[credamt++] = "Jack & Jenna Murphy"
		creditname[credamt++] = "Matthew Smith"
		creditname[credamt++] = "Alexis Royce"
		creditname[credamt++] = "kthxcat"
		creditname[credamt++] = "KC Green"
		creditname[credamt++] = "Jeremy Ogden Bazzini-Ellis"
		creditname[credamt++] = "Shion"
		creditname[credamt++] = "Jessie Rai"
		creditname[credamt++] = "Briana Ganzhorn"
		creditname[credamt++] = "Brent"
		creditname[credamt++] = "Luke Parkinson"
		creditname[credamt++] = "Kafzeil"
		creditname[credamt++] = "Colin J. MacDougall"
		creditname[credamt++] = "Claire"
		creditname[credamt++] = "Braxton Harris"
		creditname[credamt++] = "Summerwine Games"
		creditname[credamt++] = "Alexander S."
		creditname[credamt++] = "Ahmed Almutawa"
		creditname[credamt++] = "Michelle Czajkowski"
		creditname[credamt++] = "Mike Reid"
		creditname[credamt++] = "Samael the Butterdragon"
		creditname[credamt++] = "James Roach"
		creditname[credamt++] = "Luna and DC"
		creditname[credamt++] = "Tcheska Lynn Bryant"
	}
	creditname[credamt++] = "%%%"
	return credamt;
}
