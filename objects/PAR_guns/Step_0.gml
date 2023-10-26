	//virar pelo mouse
	var target_direction = point_direction(x,y, mouse_x, mouse_y);
if (target_direction < 90 || target_direction > 270){ //facing right
    image_xscale = scale;
}
else{
    image_xscale = -scale;
}