function collision(){
		
var _tx = x;
var _ty = y;

x = xprevious;
y = yprevious;

var _disx = abs(_tx - x);
var _disy = abs(_ty - y);

repeat(_disx){
	if !place_meeting(x + sign(_tx - x), y, par_collisions) x += sign(_tx - x);
}
repeat(_disy){
	if !place_meeting(x, y + sign(_ty - y), par_collisions) y += sign(_ty - y);
}

}

function calc_entity_move(){
	collision()
	///@desc moves enemy and apply drag
	//apply movement
	x += hsp;
	y += vsp;
	
	//slowdown
	hsp *= global.drag;
	vsp *= global.drag;
	
	check_if_stopped();
	collision()
}

function check_facing(){
	collision()
	var target_direction = direction
if (target_direction < 90 || target_direction > 270){ //facing right
    image_xscale = 1;
}
else{
    image_xscale = -1;
}
}

function check_for_player(){
	collision()
//@desc  check if player is close enough to chase him
var _dis = distance_to_object(obj_player);

//can we start chasing? Or we are already alert and out attack dis?
if ((_dis <= alert_dis) or alert) and _dis > attack_dis {
//enemy is now alert
alert = true;

//should we calc our path?
if calc_path_timer-- <=  0 {
	//reset timer
	calc_path_timer = calc_path_delay;
	
	//can we make a path to the player?
	if  x  == xp and y == yp var _type = 0 else  _type = 1;
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, choose(0, 1));
	//start path if we can reach the player
	if _found_player{
	path_start(path, move_spd, path_action_stop, false);
	}
}
}else{
	//are we close enough to attack?
	if _dis <= attack_dis{
				var target_direction = point_direction(x,y, obj_player.x, obj_player.y);
if (target_direction < 90 || target_direction > 270){ //facing right
    x_scale = scale;
}
else{
    x_scale = -scale;
}
			path_end();
		}
	}

}

function enemy_anim(){
//states
switch(state){
	case states.IDLE:
		sprite_index = s_idle;
		show_hurt();
	break
	
	case states.MOVE:
		sprite_index = s_walk;
		show_hurt();
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