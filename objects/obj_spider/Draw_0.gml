draw_sprite_ext(sprite_index, image_index, x, y, x_scale, y_scale, rot, c_white, 1);



switch(state){
	case states.IDLE:
		draw_sprite(spr_slime_shadow,0,x,y+5)
	break;
	
	case states.MOVE:
		draw_sprite(spr_slime_shadow,0,x,y+5)
	break;
	
	case states.ATTACK:
		draw_sprite(spr_slime_shadow,0,x,y+5)
	break;
	
	case states.DEAD:
	
	break;
}

event_inherited()

