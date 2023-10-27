// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_entity(_tid, _sid, _damage, _time){
	///@desc damage the target, and return the dead status
	///@arg tid		real   target_id
	///@arg sid		real	source_id
	///@arg damage  real	how much damage to deal
	///@arg time	real	how long to knockback the target
	
	with (_tid){
		hp -= _damage;
		var _dead = is_dead();
		path_end();
		//set knockback distance
		if _dead var _dis = 4 else var _dis = 1;
		var _dir = point_direction(_sid.x,_sid.y, x, y);
		hsp += lengthdir_x(_dis, _dir);
		vsp += lengthdir_y(_dis, _dir);
		calc_path_delay = _time;
		alert = true;
		knockback_time = _time;
		return _dead;
		
	}

}

function is_dead(){
	///@desc  check if instance running this is dead?
	if state != states.DEAD {
			if hp <= 0 {
				
				hp = 0;
				image_index = 0;
				//set death sound
					switch (object_index){
						default:
						//play sound
						break;
						case obj_player:
						//play sound
						break;
			
			}
			return true;
		}
	} return true;
}

function check_if_stopped(){
	if hsp < 0.1 hsp = 0;
	if vsp < 0.1 vsp = 0;
}


function show_healthbar(){
	///@desc show healthbar above entities head
	
	if hp != hp_max and hp > 0{
		follow_hp = lerp (follow_hp, hp, .05);
		draw_sprite( spr_health_bg,0,x,bbox_bottom+15)
		draw_healthbar(x-7,bbox_bottom+2,x+7,bbox_bottom+5, follow_hp/hp_max*100, c_black, c_white, c_white, 0, 0, 0);
		draw_healthbar(x-7,bbox_bottom+2,x+7,bbox_bottom+5, hp/hp_max*100, c_black, #C70039, #C70039, 0, 0, 0);
	}
	
}
