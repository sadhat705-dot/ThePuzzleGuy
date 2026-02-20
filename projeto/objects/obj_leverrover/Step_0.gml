// =====================
// GRAVIDADE
// =====================
vsp += grav;
vsp = clamp(vsp, -10, 10);

// =====================
// MOVIMENTO HORIZONTAL
// =====================
var hsp = spd * dir;

// só se ainda não estiver ativado
if (!activated)
{
    // vira se bater em parede ou acabar chão
    if (place_meeting(x + hsp, y, obj_ground) || !place_meeting(x + dir * 8, y + 1, obj_ground))
    {
        dir *= -1;
    }

    // aplica movimento horizontal
    if (!place_meeting(x + hsp, y, obj_ground))
        x += hsp;
}

// =====================
// COLISÃO Y
// =====================
if (place_meeting(x, y + vsp, obj_ground))
{
    while (!place_meeting(x, y + sign(vsp), obj_ground))
        y += sign(vsp);

    vsp = 0;
}

y += vsp;

// =====================
// SPRITE DIREÇÃO
// =====================
image_xscale = dir;

// =====================
// ANIMAÇÃO NORMAL
// =====================
if (!activated)
{
    // animação entre frame 0 e 2
    if (image_index < 0 || image_index > 1)
        image_index = 0;

    // avança frames automaticamente
    image_index += image_speed;

    if (image_index > 1)
        image_index = 0;
}

// =====================
// INTERAÇÃO COM PLAYER (ativar alavanca)
// =====================
if (!activated)
{
    // verifica se o player está encostando
    var p = instance_place(x, y, obj_player);

    if (p != noone && keyboard_check_pressed(ord("F")))
    {
        activated = true;
        image_index = 2; // frame da alavanca ativada
        spd = 0;         // para inimigo completamente

        // atualiza contador global
        global.enemy_done += 1;
    }
}
