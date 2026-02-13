show = false;

if (distance_to_object(obj_player) < 64 || distance_to_object(obj_p2) < 64) {
    show = true;
}

// animação do texto
if (show) {
    char_index += text_speed;
    char_index = clamp(char_index, 0, string_length(text));
} else {
    char_index = 0;
}
