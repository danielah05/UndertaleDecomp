function scr_phoneshift()
{
	global.phone[8] = argument1
	for (i = argument0; i < InventorySize; i += 1)
	    global.phone[i] = global.phone[(i + 1)]
	scr_phonename()
}
