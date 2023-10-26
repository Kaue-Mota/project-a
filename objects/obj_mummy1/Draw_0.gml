



switch(state){
	case states.IDLE:
		draw_sprite(spr_mummy_shadow,0,x,y+6)
	break;
	
	case states.MOVE:
		draw_sprite(spr_mummy_shadow,0,x,y+6)
	break;
	
	case states.ATTACK:
		draw_sprite(spr_mummy_shadow,0,x,y+6)
	break;
	
	case states.DEAD:
	
	break;
}

event_inherited()