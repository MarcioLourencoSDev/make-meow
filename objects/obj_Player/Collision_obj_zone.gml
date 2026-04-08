
if(controlado){
	camera_set_view_pos(view_camera[0], other.x, other.y);
	
	if(!instance_exists(obj_pianista)) exit;
	var _is_pianIn = point_in_rectangle(obj_pianista.x, obj_pianista.y, other.x, other.y, other.x + other.sprite_width, other.y + other.sprite_height);
	if(_is_pianIn){
		global.activated_pianista = true;
	}
}