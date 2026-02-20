// ===============================
// SISTEMA DE ALAVANCAS (contagem)
// ===============================

var lever_total  = instance_number(obj_lever);
var lever_on = 0;

// conta quantas estão ligadas
with (obj_lever)
{
    if (active) lever_on++;
}

// adiciona inimigos ativados
with (obj_leverrover)
{
    lever_total += 1; // incrementa total
    if (activated) lever_on++;
}

// se existir alavanca → TODAS precisam estar ligadas
if (lever_total > 0)
{
    door_open = (lever_on == lever_total);
}


// se existir alavanca → TODAS precisam estar ligadas
if (lever_total > 0)
{
    door_open = (lever_on == lever_total);
}
else
{
    // ===============================
    // BOTÕES (só se NÃO tiver alavanca)
    // ===============================

    door_open = false;

    if (instance_exists(obj_button))
    {
        if (obj_button.is_pressed)
            door_open = true;
    }

    if (instance_exists(obj_button_pyr))
    {
        if (obj_button_pyr.pressed)
            door_open = true;
    }
}

// ===============================
// VISUAL + COLISÃO
// ===============================

if (door_open)
{
    sprite_index = sprite_open;
    solid = false;
}
else
{
    sprite_index = sprite_closed;
    solid = true;
}

// ===============================
// PLAYER NA PORTA
// ===============================

if (door_open && place_meeting(x, y, obj_player) && !go_next)
{
    go_next = true;
}

// ===============================
// FADE IN
// ===============================

if (fading_in)
{
    fade -= fade_speed;

    if (fade <= 0)
    {
        fade = 0;
        fading_in = false;
    }
}

// ===============================
// FADE OUT
// ===============================

if (go_next)
{
    fade += fade_speed;

    if (fade >= 1)
    {
        room_goto(rm_next);
    }
}
