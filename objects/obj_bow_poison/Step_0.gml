event_inherited();


if keyboard_check_pressed(ord("G")){
	instance_create_layer(x,y, "Bows",obj_bow_poison_pickup)
	instance_destroy();
}

escala_x = lerp(escala_x, scale, .3);
escala_y = lerp(escala_y, scale, .3);

 if mouse_check_button(mb_left){
 
  

		
	if can_fire {
		can_fire = false;
		alarm [0] = fire_rate;
		
		var _dir = point_direction(x,y, mouse_x, mouse_y);
		
		var _inst = instance_create_layer(x,y, "Projectiles", obj_arrow_poison);
		
	
		 obj_camera.shake_value = .8;
		obj_player.bow_dis = 3;
		  escala_y = .8;
				escala_x = 1.5;
		with (_inst) {
			speed = other.arrow_speed;
			direction = _dir + choose(3, 0, -3);
			image_angle = direction;
			owner_id = other;
			}
		}
	
	
	
	
 }