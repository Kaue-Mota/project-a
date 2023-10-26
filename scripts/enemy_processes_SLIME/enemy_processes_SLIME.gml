function slime_colisao(){
	
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
	
function slime_checar_player (){
	
		calc_entity_move();
	if distance_to_object(obj_player) <= dis_seguir{
		estado = slime_perseguir;
	}
}

function slime_escolher_estado(){
	slime_colisao()
	slime_checar_player();
	prox_estado = choose(slime_andando,slime_parado);
	
	if prox_estado == slime_andando{
		estado = slime_andando;
		dest_x = irandom_range(0,room_width);
		dest_y = irandom_range(0,room_height);
	
	} else if prox_estado == slime_parado{
		estado = slime_parado;
	}


}

function slime_andando(){
	slime_colisao()
		calc_entity_move();
	slime_checar_player();
image_speed = 1;

if distance_to_point(dest_x, dest_y) > move_spd{
var _dir = point_direction(x,y,dest_x,dest_y);
hsp = lengthdir_x(move_spd, _dir);
vsp = lengthdir_y(move_spd, _dir);


}else{
x = dest_x;
y = dest_y;
}

slime_colisao()

}

function slime_parado(){
	slime_colisao()
		calc_entity_move();
	slime_checar_player();
image_speed = .5;
slime_colisao()
}

function slime_perseguir(){
slime_colisao()
	
		calc_entity_move();

//@desc  check if player is close enough to chase him
var _dis = distance_to_object(obj_player);

//can we start chasing? Or we are already alert and out attack dis?
if (_dis <= alert_dis)  {
//enemy is now alert
alert = true; 

//should we calc our path?

	
	//can we make a path to the player?
	if  x  == xp and y == yp var _type = 0 else  _type = 1;
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, choose(0, 1));
	//start path if we can reach the player
	if _found_player{
	path_start(path, attack_spd, path_action_stop, false);
	
	}
}


slime_colisao()


}