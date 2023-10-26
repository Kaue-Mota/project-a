//slow down over time
speed *= fric
//when the animation is over, destroy

switch(debris){
	case false:
	depth = +1;
	if (image_index >= image_number -1){
		instance_destroy()
}
break;
case true:
if place_meeting(x,y,obj_wall){
		instance_destroy()
	}
	if(speed<=0){
		surface_set_target(obj_gamecontroller.debris_surf)
		draw_self()
		surface_reset_target()
		instance_destroy()
		break;
	}





}