



function enemy_anim(){
//states
switch(state){
	case states.IDLE:
		sprite_index = s_idle;
		
	break
	
	case states.MOVE:
		sprite_index = s_walk;
		
	break
	
	case states.ATTACK:
		sprite_index = s_idle;
	break
	
	case states.DEAD:
		sprite_index = s_idle;
	break
}
xp = x;
yp = y;
}
	
function show_hurt(){
///@desc sow the hurt sprite when being knocked back

if knockback_time-- > 0 sprite_index = s_hurt;

}