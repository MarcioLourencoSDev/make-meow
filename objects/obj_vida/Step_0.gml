
var cam = view_camera[0];

var base_x = camera_get_view_x(cam) + 12;
var base_y = camera_get_view_y(cam) + 12;

// cada coração se afasta um pouco no eixo X
x = lerp(x, base_x + (indice * 32), 0.2);
y = lerp(y, base_y, 0.2);
