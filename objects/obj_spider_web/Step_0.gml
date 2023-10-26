var _dis = point_distance(xstart, ystart, x,y);
if _dis > range {
web_die()	
}


image_alpha -=.01;

if image_alpha <= 0{
	instance_destroy();
}

if place_meeting(x,y,obj_player) {
	obj_player.spd = .1; 
	obj_player.image_speed = .5;

} else {
		obj_player.spd = obj_player.max_speed; 
			obj_player.image_speed = 1;

}

