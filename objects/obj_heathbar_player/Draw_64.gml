draw_sprite_ext(spr_healthbar_player_BG, image_speed,x,y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
	global.follow_hp = lerp (global.follow_hp, global.hp, .1);

draw_healthbar(x,y+15,x+255,y+50, global.follow_hp/global.hp_max*100, c_black, c_white, c_white, 0, 0, 0);
draw_healthbar(x,y+15,x+255,y+50, global.hp/global.hp_max*100, c_black, #BB2525, #BB2525, 0, 0, 0);
draw_sprite_ext(spr_healthbar_player, image_speed,x,y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
//arma equipada e firerate
draw_healthbar(x+4,y+3,x+58,y+55, PAR_guns.alarm [0]/30*100, c_black, c_white, c_white, 0, 0, 1);
draw_sprite_ext(global.arma_atual,image_speed,x+30,y+30,3,3,image_angle,image_blend,image_alpha)



