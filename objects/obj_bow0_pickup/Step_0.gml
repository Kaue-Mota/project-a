if distance_to_object(obj_player) <= 30{
	if keyboard_check_pressed(ord("E")){
		instance_create_layer(x,y, "Bows", obj_bow0)
		instance_destroy();
		
	}
}





