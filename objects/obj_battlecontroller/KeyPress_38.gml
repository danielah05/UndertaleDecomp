if (keyboard_check_pressed(vk_down) == false)
{
	if (global.mnfight == 0)
	{
		if (global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11)
		{
			var oldcoord = global.bmenucoord[1]
			global.bmenucoord[1] -= 1
			if (global.bmenucoord[1] < 0)
				global.bmenucoord[1] = 2
			if (global.monster[0] == 0 && global.monster[2] == 0)
				global.bmenucoord[1] = 1
			if (global.bmenucoord[1] == 2 && global.monster[2] == 0)
				global.bmenucoord[1] = 1
			if (global.bmenucoord[1] == 1 && global.monster[1] == 0)
				global.bmenucoord[1] = 0
			if (global.bmenucoord[1] == 0 && global.monster[0] == 0)
				global.bmenucoord[1] = 2
			if (global.bmenucoord[1] != oldcoord)
				snd_play(snd_squeak)
		}
		if (global.bmenuno == 10)
		{
			oldcoord = global.bmenucoord[2]
			if (global.bmenucoord[2] != 0 && global.bmenucoord[2] != 3)
				global.bmenucoord[2] -= 1
			else
				global.bmenucoord[2] += 2
			if (global.choices[global.bmenucoord[2]] == 0)
				global.bmenucoord[2] -= 1
			if (global.choices[global.bmenucoord[2]] == 0)
				global.bmenucoord[2] -= 1
			if (global.choices[0] == 1 && global.choices[1] == 0 && global.choices[2] == 0 && global.choices[3] == 0 && global.choices[4] == 0 && global.choices[5] == 0)
				global.bmenucoord[2] = 0
			if (global.bmenucoord[2] != oldcoord)
				snd_play(snd_squeak)
		}
		if (global.bmenuno >= 3 && global.bmenuno < 4)
		{
			var tempcheck = (global.bmenucoord[3] + ((global.bmenuno - 3) * 8))
			if (global.language == "ja")
			{
				if (tempcheck > 0)
				{
					if (global.bmenucoord[3] > 0)
						global.bmenucoord[3] -= 1
					else
						global.bmenuno -= 0.125
					snd_play(snd_squeak)
				}
			}
			else
			{
				var mv = 0
				tempcheck = global.bmenucoord[3]
				if (global.bmenuno == 3.5)
					tempcheck += 4
				if (global.bmenucoord[3] == 2 || global.bmenucoord[3] == 3)
				{
					global.bmenucoord[3] -= 2
					mv = 1
				}
				if (mv == 0)
				{
					if (global.bmenucoord[3] == 0 || global.bmenucoord[3] == 1)
					{
						global.bmenucoord[3] += 2
						if (global.item[(tempcheck + 2)] == Items.Null)
							global.bmenucoord[3] -= 2
						mv = 1
					}
				}
				if (mv != 0)
					snd_play(snd_squeak)
			}
		}
		if (global.bmenuno == 4)
		{
			oldcoord = global.bmenucoord[4]
			if (global.bmenucoord[4] == 0 && global.mercy < 1)
				global.bmenucoord[4] = 1
			else
				global.bmenucoord[4] = 0
			if (global.bmenucoord[4] != oldcoord)
				snd_play(snd_squeak)
		}
	}
}
