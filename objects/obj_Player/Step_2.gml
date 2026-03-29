switch(estado_atual){
	case ESTADOS.MEOW:
		sprite_index = skin[ESTADOS.MEOW];
		
		if(image_index >= image_number - 1 && image_speed > 0){
			meow_proximity();
			sprite_index = skin[ESTADOS.IDLE];
			estado_atual = ESTADOS.IDLE;
		}
		break;
	case ESTADOS.IDLE:
		sprite_index = skin[ESTADOS.IDLE];
		break;
	case ESTADOS.MOVE:
		sprite_index = skin[ESTADOS.MOVE];
		break;
	case ESTADOS.IDLE_LONGTIME:
		sprite_index = skin[ESTADOS.IDLE_LONGTIME];
		if (image_index >= image_number - 1 && image_speed > 0) {
	      sprite_index = skin[ESTADOS.IDLE];
		  estado_atual = ESTADOS.IDLE;
		}
		break;
	
}

//Se tiver colidindo com a parede
_layer1 = layer_get_id("Tile_brickeds");
_layer2 = layer_get_id("Tile_brickeds_pillars");

_tilemap1 = layer_tilemap_get_id(_layer1);
_tilemap2 = layer_tilemap_get_id(_layer2);
// Se vspd for verdadeiro, ele so retorna o y mas o x funciona
if(place_meeting(x,y + vspeed, [_tilemap1, _tilemap2])){
	y = yprevious;
} 
if(place_meeting(x + hspeed,y, [_tilemap1, _tilemap2])){
	x = xprevious;
}

if(obj_door.image_index != 1){
	if(place_meeting(x,y + vspeed, obj_door)){
	y = yprevious;
	} 
	if(place_meeting(x + hspeed,y, obj_door)){
	x = xprevious;
	}
}

// Camera seguir
with(obj_Player){
	if(controlado){
		camera_set_view_target(view_camera[0], id);
	}
}