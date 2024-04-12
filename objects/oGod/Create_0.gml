/// @description Insert description here
// You can write your code in this editor
selectedUnits = [];

mouseDragMode = false;
mouseDragSx = mouse_x;
mouseDragSy = mouse_y;
mouseDragEx = mouse_x;
mouseDragEy = mouse_y;

repeat (6)
{
	instance_create_layer(irandom(room_width),irandom(room_height),"Instances",oUnit);
}

function selectUnits() {
	var big = swap(mouseDragSx,mouseDragEx);
	mouseDragSx = big[0];
	mouseDragEx = big[1];
		
	big = swap(mouseDragSy,mouseDragEy);
	mouseDragSy = big[0];
	mouseDragEy = big[1];

selectedUnits = [];
		
	with (oUnit) {
		selected = false;
		if (point_in_rectangle(x+sprite_width/2,y+sprite_height/2,other.mouseDragSx,other.mouseDragSy,other.mouseDragEx,other.mouseDragEy)) {
			selected = true;
			offsetAnim = offsetDist;
			with (oGod) array_push(selectedUnits, other.id);
		}
	}
}