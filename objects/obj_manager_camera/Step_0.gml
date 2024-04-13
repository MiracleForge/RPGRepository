// Verifica se há um objeto para a câmera seguir
if (global.cam_follow != noone) {
	// Define as coordenadas do objeto a ser seguido
	x_to = global.cam_follow.x;
	y_to = global.cam_follow.y;
}

// Interpola a posição atual da câmera (x, y) para a posição do objeto a ser seguido (x_to, y_to)
// A velocidade de interpolação é definida por 'camera_centralization_speed'
x = lerp(x, x_to, camera_centralization_speed);
y = lerp(y, y_to, camera_centralization_speed);

// Define a posição da câmera para seguir o objeto
// O Fator de Centralização ('centralization_factor') é usado para ajustar a posição da câmera em relação ao objeto seguido
// de forma que o objeto esteja centralizado na visão da câmera
camera_set_view_pos(view_camera[0], x - (cam_width * centralization_factor),y - (cam_height * centralization_factor));

// Verifica se o zoom atual é menor que o zoom alvo
if (zoom < zoom_target) {
    // Aumenta o zoom na velocidade definida por 'zoom_speed'
    zoom += zoom_speed;
} else if (zoom > zoom_target) {
    // Diminui o zoom na velocidade definida por 'zoom_speed'
    zoom -= zoom_speed;
}

// Define o tamanho da visão da câmera com base no zoom atual
// 'view_wport' e 'view_hport' são a largura e a altura da porta de visualização, respectivamente
camera_set_view_size(view_camera[0], view_wport * zoom, view_hport * zoom);
