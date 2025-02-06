var _dis = point_distance(xstart, ystart, x,y);
if _dis > range {
bullet_die()	
}

escala_x = lerp(escala_x, scale, .1);
escala_y = lerp(escala_y, scale, .1);

