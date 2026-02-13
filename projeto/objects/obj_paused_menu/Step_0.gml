if (keyboard_check_pressed(vk_escape)) {
    paused = !paused;                  // Alterna pausa
    if (instance_exists(player_instance)) {
        player_instance.can_move = !paused; // Bloqueia/desbloqueia movimento
    }
}
