// =====================
// ATIVAÇÃO
// =====================
if (!active && instance_exists(obj_player))
{
    if (distance_to_object(obj_player) < 32 && keyboard_check_pressed(ord("F")))
    {
        active = true;
    }
}


// =====================
// VISUAL
// =====================
if (active)
{

    image_xscale = -1;
}
else
{

    image_xscale = 1;
}
