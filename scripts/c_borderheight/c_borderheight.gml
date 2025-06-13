function c_borderheight()
{
	if (argument0 == 0)
		return (obj_dborder.y - obj_uborder.y);
	if (argument0 == 1)
		return (global.idealborder[3] - global.idealborder[2]);
}
