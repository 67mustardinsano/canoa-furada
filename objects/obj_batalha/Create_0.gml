turno= 0;
personagem_atual= 0;
quantidade_personagens = 3;
window_set_size(1280, 960);
if (!view_enabled)
{view_enabled = true;}
camera = camera_create_view(0, 0, 640, 480);
view_camera[0] = camera;
view_visible[0] = true;
camera_set_view_pos(camera, 0, 0);