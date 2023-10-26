
event_inherited()



//anim
s_idle = spr_slime1;
s_walk = spr_slime1;
s_hurt = spr_slime1;
s_attack = spr_slime1;
s_dead = spr_slime_explode;

randomize(){

estado = slime_escolher_estado;
move_spd = .5;
attack_spd = 1;
prox_estado = 0;
hsp = 0;
vsp = 0;
dest_x = 0;
dest_y = 0;
dis_seguir = 2000;
dis_parardeseguir = 600;
}
//pular
pular= false;
ativar_alarm = false;
ativar_alarm2 = false;
alarm[0] = room_speed;
z = 0;
forca_pulo = -10;
velz = 0;
grav = .8;

//debris
debri_sprite = spr_debri_slime;
debri_amount = 3;
debri_color = #C32454;

//hp
hp_max = 5;
hp = hp_max;

