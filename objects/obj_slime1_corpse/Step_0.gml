var _kb_direction = point_direction(x,y, obj_player.x,obj_player.y)+180;


if (kb_amount > 0){
	x += lengthdir_x(kb_amount, _kb_direction);
	y += lengthdir_y(kb_amount, _kb_direction);
	
	kb_amount -= 1/10;

}

if kb_amount == 0{
	
repeat (10){

var _dir = point_direction(x,y,obj_player.x,obj_player.y)+180
var _inst = instance_create_depth(x+random_range(-5,5), y+random_range(-5,5),depth-2,obj_dust_corpse);
	_inst.sprite_index = spr_hitparticle
	_inst.image_xscale = .5;
	_inst.image_yscale = .5;
	_inst.image_speed = random_range(1/15,1/6)
	_inst.speed = random (1)
	_inst.direction = _dir+random_range(-30,30);
	}

	instance_destroy()
}

//adicionar graviddade caso esteja subindo
if (velz != 0) velz += grav;

//colisao com o chao
if((z + velz) > 0){
	velz = 0;
	z = 0;
	
}
//velz+=grav
	z += velz;

// facing

var target_direction = direction
if (target_direction < 90 || target_direction > 270){ //facing right
    image_xscale = 1;
}
else{
    image_xscale = -1;
}
