// camera size
cam_width = 320;
cam_height = 160;
// Quem a camera está seguindo
global.cam_follow = noone;
centralization_factor = 0.5;
camera_centralization_speed = 0.1;
// Posição da camera
x_to = x;
y_to = y;
// Esconder a sprite da camera
visible = false;


// ZOOM effect
zoom = 1; // O nível atual de zoom
zoom_target = 1; // O nível de zoom que a câmera está tentando alcançar
zoom_speed = 0.01; // A velocidade na qual a câmera se aproxima do zoom_target
