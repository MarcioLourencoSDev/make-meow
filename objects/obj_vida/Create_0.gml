//Descobrindo o indicie do objeto, sua posição seerá calculada baseada nele
indice = -1;
depth = -7
for (var i = 0; i < instance_number(obj_vida); i++) {
    if (instance_find(obj_vida, i) == id) {
        indice = i;
        break;
    }
}

// Player
player = obj_Player
