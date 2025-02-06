if distance_to_object(obj_player) <= 5 and (!instance_exists(PAR_guns_pickups)){
	if keyboard_check_pressed(ord("E")){
		instance_create_layer(x,y, "Bows", obj_small_sword);
		instance_destroy();
		
	}
}


