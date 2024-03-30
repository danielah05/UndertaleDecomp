function string_to_hiragana()
{
	var str = argument0
	var result = ""
	var lastch = ""
	for (var i = 1; i <= string_length(str); i++)
	{
	    var ch = ord(string_char_at(str, i))
	    if (ch >= 12449 && ch <= 12534)
	        ch -= 96
	    else if (ch >= 65377 && ch <= 65439)
	    {
	        var halfkata = "。「」、・をぁぃぅぇぉャュョッーあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわん゛゜"
	        ch = ord(string_char_at(halfkata, (ch - 65376)))
	        if (lastch != "")
	        {
	            if (ch == 12443)
	            {
	                var daku_from = "かきくけこさしすせそたちつてとはひふへほ"
	                var daku_to = "がぎぐげござじずぜぞだぢづでどばびぶべぼ"
	                var pos = string_pos(lastch, daku_from)
	                if (pos != 0)
	                    ch = ord(string_char_at(daku_to, pos))
	            }
	            else if (ch == 12444)
	            {
	                var handaku_from = "はひふへほ"
	                var handaku_to = "ぱぴぷぺぽ"
	                pos = string_pos(lastch, handaku_from)
	                if (pos != 0)
	                    ch = ord(string_char_at(handaku_to, pos))
	            }
	        }
	    }
	    lastch = chr(ch)
	    result += lastch
	}
	return result;
}
