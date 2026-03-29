if(controlado){
	if(!collision_button){
		other.aberto = !other.aberto;
		collision_button = true;
	}
	if(y + 6 < other.y){
		depth = other.depth + 1;
	} else{
		depth = other.depth - 1;
	}
}