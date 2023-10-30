speed *= fric

image_angle = lerp(image_angle, 0, 1)
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







//adicionar graviddade caso esteja subindo
if (velz != 0) velz += grav;

//colisao com o chao
if((z + velz) > 0){
	velz = 0;
	z = 0;
	
}
//velz+=grav
	z += velz;

// facing