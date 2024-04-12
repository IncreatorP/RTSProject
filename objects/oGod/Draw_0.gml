/// @description Insert description here
// You can write your code in this editor
if (mouseDragMode) {
	draw_set_color(c_lime);
	draw_rectangle(mouseDragSx,mouseDragSy,mouse_x,mouse_y,true);
	draw_set_color(c_white);
}

draw_text(0,0,selectedUnits);

if (array_length(selectedUnits) > 0)
{
	var s = 14;
	for (var i=0; i < array_length(selectedUnits); i++)
	{		
		draw_text(0, s, "A-list:" + string(selectedUnits[i].actionList));
		draw_text(0, s+14, "A-num:" + string(selectedUnits[i].actionNum));
		draw_text(0, s+28, "A-type:" + string(selectedUnits[i].actionType));
		s += 3*14;

	}
}