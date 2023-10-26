if instance_exists(obj_player){
if (distance_to_point(obj_player.x, obj_player.y)<=10) {
	
	image_alpha = lerp(image_alpha, .5, .1);
} else {
	image_alpha = lerp(image_alpha, 1, .1);
}
}
if instance_exists(PAR_enemys){
if (distance_to_point(PAR_enemys.x, PAR_enemys.y)<=10){
	
		image_alpha = lerp(image_alpha, .5, .1);
} else {
	image_alpha = lerp(image_alpha, 1, .1);
}
}


