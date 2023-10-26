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
	check_facing();
		collisions();
		calc_entity_move();
		enemy_anim();
	break;
	
	case states.DEAD:
		collisions();
		calc_entity_move();
		enemy_anim();
	break;
}






