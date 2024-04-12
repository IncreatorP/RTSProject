/// @description Insert description here
// You can write your code in this editor
image_angle = direction;
image_index = selected;

if (selected) {
	var offset = offsetAnim+8;
	var lx = x-sprite_width/2-offset;
	var rx = x+sprite_width/2+offset;
	var uy = y-sprite_height/2-offset;
	var dy = y+sprite_height/2+offset;
	
	
	draw_sprite_ext(sSelect,0,lx,uy,1,1,0,c_white,1);
	draw_sprite_ext(sSelect,0,rx,uy,1,1,270,c_white,1);
	draw_sprite_ext(sSelect,0,rx,dy,1,1,180,c_white,1);
	draw_sprite_ext(sSelect,0,lx,dy,1,1,90,c_white,1);
	

/*
	var length = 100;
	for (var i=0; i<360; i+=45) {
		draw_line(x,y,x+lengthdir_x(length,i),y+lengthdir_y(length,i));
	}
*/

}
draw_self();

