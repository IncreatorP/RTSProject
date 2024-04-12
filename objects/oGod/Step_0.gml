/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left))
{
	if (!mouseDragMode) {
		mouseDragMode = true;
		mouseDragSx = mouse_x;
		mouseDragSy = mouse_y;
	}
	mouseDragEx = mouse_x;
	mouseDragEy = mouse_y;
}

if (!mouse_check_button(mb_left))
{
	if (mouseDragMode) {
		mouseDragMode = false;
		mouseDragEx = mouse_x;
		mouseDragEy = mouse_y;
		selectUnits();
	}	
}

if (mouse_check_button_pressed(mb_right))
{
	if (array_length(selectedUnits) == 0) {
		exit;
	}
	for (var i=0; i < array_length(selectedUnits); i++) {
		with (selectedUnits[i]) {
			actionList = [];
			var task = ["Look", mouse_x, mouse_y];
			array_push(actionList, task);
		}
	}
}
