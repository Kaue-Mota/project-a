event_inherited()


//sombra
draw_sprite(spr_slime_shadow,0,x,y+5)

//mudar lado da sprite
if dest_x < x{
	image_xscale = -scale;
} else {
	image_xscale = scale;
}

draw_sprite_ext(sprite_index, image_index, x, y+z, x_scale, y_scale, rot, c_white, 1);

//FLASH
if hit_alpha > 0{
gpu_set_fog(1, hit_color,0,0)


draw_sprite_ext(sprite_index, image_index, x, y+z, x_scale, y_scale, rot, c_white, hit_alpha);


gpu_set_fog(0, hit_color,0,0)
}


