event_inherited();


if keyboard_check_pressed(ord("G")){
	instance_create_layer(x,y, "Bows",obj_small_sword_pickup)
	instance_destroy();
}

	var _aim_side = sign(mouseX - x)
	if(_aim_side != 0) scale = _aim_side;

escala_x = lerp(escala_x, scale, .3);
escala_y = lerp(escala_y, scale, .3);


 if mouse_check_button(mb_left){
 


	if can_fire {
		can_fire = false;
		alarm [0] = fire_rate;
		  
		var _dir = point_direction(x,y, mouse_x, mouse_y);
		
		var _inst = instance_create_layer(x,y, "Projectiles", obj_small_sword_bullet);
		
	
		 obj_camera.shake_value = .8;
		obj_player.bow_dis = 3;
		  escala_y = .8;
				escala_x = 1.5;
		with (_inst) {
			speed = other.bullet_speed;
			direction = _dir + choose(3, 0, -3);
			image_angle = direction;
			owner_id = other;
			}
		}
	
	
	
	
 }