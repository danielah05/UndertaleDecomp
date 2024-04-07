/// @func	scr_phoneget(phone_id)
/// @desc	Gets phone id
/// @arg	{real}	phone_id	ID of the phone name to grab
function scr_phoneget(_phone_id)
{
	i = 0
	loop = 1
	global.phone[8] = 999
	while (loop == 1)
	{
	    if (global.phone[i] == 0)
	    {
	        global.phone[i] = _phone_id
	        break
	    }
	    else if (i == 8)
	    {
	        scr_itemnospace()
	        break
	    }
	    else
	    {
	        i += 1
	        continue
	    }
	}
	scr_phonename()
}
