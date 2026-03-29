if(aberto){
	image_index = 1;
	time += 1;
} else{
	image_index = 0;
	time = 0;
}
if( time >= 60*10){
	time = 0;
	aberto = false;
}