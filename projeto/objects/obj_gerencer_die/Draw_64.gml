var heart_y = 40;

// PLAYER 1
for (var i = 0; i < global.p1_life; i++) {
    draw_sprite(
        spr_heart_p1,
        current_time div 120 mod sprite_get_number(spr_heart_p1),
        20 + i * 40,
        heart_y
    );
}