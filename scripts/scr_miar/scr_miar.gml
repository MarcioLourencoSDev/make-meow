function meow_proximity(){
	
  var raio = 100;
  var alvo = noone; // Está no alcance
  var min_distance = raio;  // Menor distância, como referência
  with(obj_Player){
	  // Verifica se não repete id;
	  if(id != other.id){
		  // vê a distância entre as duas instâncias
		  var distance = point_distance(x,y, other.x, other.y);
		  // Verifica se a distância é menor do que a mínima, se for: transforma a mínima na distância e diz que esse alvo é o mais próximo
		  if(distance < min_distance){
			  min_distance = distance;
			  alvo = id;
		  }
	  }
  }
  // Se há um alvo:
  if(alvo != noone){
	   // Desativa o controle do atual
	  controlado = false;
	  
	  // ativa do alvo.
	  alvo.controlado = true;
  }
}






