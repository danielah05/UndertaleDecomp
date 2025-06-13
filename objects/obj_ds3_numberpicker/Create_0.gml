global.interact = 1
depth = -100
draw = 1
coin = FL_DogShrineXboxCoins
total = 0
digit[0] = 0
digit[1] = 0
digit[2] = 0
digit[3] = 0
dirbuffer = 0
finishbuffer = 0
mode = 0
con = 0
coord = 0
mincoord = 4
maxcoord = 5
if (coin > 0)
	mincoord = 3
if (coin >= 10)
	mincoord = 2
if (coin >= 100)
	mincoord = 1
if (coin >= 1000)
	mincoord = 0
repeat (5)
{
	if (coord < mincoord)
		coord += 1
}
coinstring = string(coin)
stringlength = string_length(coinstring)
j = 0
for (i = 0; i < 4; i += 1)
	idealdigit[i] = 0
for (i = 0; i < stringlength; i += 1)
{
	idealdigit[(3 - i)] = 0
	idealdigit[(3 - i)] = real(string_char_at(coinstring, (stringlength - i)))
}
hasDonated = 0
if ossafe_file_exists("undertale.ini")
{
	ossafe_ini_open("undertale.ini")
	hasDonated = ini_read_real("Dogshrine", "Donated", 0)
	ossafe_ini_close()
}
