function c_borderwidth()
{
	if (argument0 == 0)
		return (obj_rborder.x - obj_lborder.x);
	if (argument0 == 1)
		return (global.idealborder[1] - global.idealborder[0]);
}
