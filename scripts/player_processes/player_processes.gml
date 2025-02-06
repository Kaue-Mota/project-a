
function get_input(){
	// definir variáveis de controle
 _h_input = gamepad_axis_value(0, gp_axislh) + keyboard_check(ord("D")) - keyboard_check(ord("A"));
 _v_input = gamepad_axis_value(0, gp_axislv) + keyboard_check(ord("S")) - keyboard_check(ord("W"));

// verificar se o botão de ação foi pressionado
if (gamepad_button_check(0, gp_face1) || keyboard_check(vk_space)) {
// executar ação do botão de ação
}
}
	
function calc_movement(){
// atualizar a velocidade horizontal e vertical de acordo com a entrada
if (_h_input != 0) {
hsp += _h_input * accel;
sprite_index = spr_player_r
} else {
	
hsp-= sign(hsp) * friction;
}

if (_v_input != 0) {
vsp += _v_input * accel;
sprite_index = spr_player_r
} else {
	
vsp -= sign(vsp) * friction;
}

// limitar a velocidade máxima
hsp = clamp(hsp, -max_speed, max_speed);
vsp = clamp(vsp, -max_speed, max_speed);


x+=hsp;
y+=vsp;

mouseX = mouse_x;
mouseY = mouse_y;


}

function collisions(){
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
	
//// impedir que a velocidade fique muito baixa
if (abs(hsp) < 0.1) {
hsp = 0;
}

if (abs(vsp) < 0.1) {
vsp = 0;
}

}


function bow_processes(){
	// bow dir
if instance_exists(obj_player.my_bow){
aim_dir = point_direction(x,y,mouse_x, mouse_y);

my_bow.image_angle = aim_dir;
}

//recoil
bow_dis = lerp(bow_dis, bow_dis_max, .1);

}
	
function player_anim(){
	var _aim_side = sign(mouseX - x)
	if(_aim_side != 0) image_xscale = _aim_side;
		// animação 

if _h_input != 0{
	if (_aim_side != sign(_h_input)) sprite_index = spr_player_rR;
}


if _h_input = 0 and _v_input = 0 {sprite_index = spr_player}
}