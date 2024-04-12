
// get going
if (array_length(actionList) != 0)
{
	if (actionNum == -1) {
		actionNum = 0;
		actionType = actionList[actionNum, 0];
		if (actionType = "Look") {
			desiredDir = point_direction(x, y, actionList[actionNum, 1], actionList[actionNum, 2]);
			alarm[0] = turnRate;
		}
	}		
}

if (offsetAnim > 0)
{
	offsetAnim--;
}
