with(obj_Player){
	if(controlado){
		with(obj_nota){
				var dir = point_direction(x, y, other.x, other.y);
				motion_add(dir, spd);
		}
	}
}