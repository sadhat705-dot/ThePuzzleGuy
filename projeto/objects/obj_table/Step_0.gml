if (distance_to_object(obj_player) < 48)
{
	show = true;
}
else
{
	show = false;
}

// fade suave
alpha = lerp(alpha, show, 0.15);

// flotação leve
float += 0.05;
