if (distance_to_point(obj_player.x, obj_player.y)<=10){
	
	image_alpha = lerp(image_alpha, .5, .1);
} else {
	image_alpha = lerp(image_alpha, 1, .1);
}
