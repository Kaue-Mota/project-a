event_inherited();


//states
switch(state){
	case states.IDLE:
	collisions();
		calc_entity_move();
		check_for_player();
		if path_index != -1 state = states.MOVE;
		enemy_anim();
	break;
	
	case states.MOVE:
	collisions();
		calc_entity_move();
		check_for_player();
		check_facing();
		
		if path_index == -1 state = states.IDLE;
		enemy_anim();
	break;
	
	case states.ATTACK:
	collisions();
	check_facing();
		calc_entity_move();
		enemy_anim();
	break;
	
	case states.DEAD:


	collisions();
		calc_entity_move();
		enemy_anim();
	break;
}

// se estiver na distancia do ataque, começar a atirar teias
if distance_to_object(obj_player) <= attack_dis{
	if can_fire {
		can_fire = false;
		alarm [0] = fire_rate;
		
		
		var _dir = point_direction(x,y, obj_player.x, obj_player.y);
		
		var _inst = instance_create_layer(x,y, "Projectiles", obj_spider_web_bullet);
		 y_scale = 1.5;
	x_scale = 2;

		
		 obj_camera.shake_value = .5;
		
			
		with (_inst) {
			speed = other.web_speed;
			direction = _dir + choose(3, 0, -3);
			image_angle = direction;
			
		}
	
	}
	
}

