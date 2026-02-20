// CONFIG
line_length = 220;
line_angle  = 45;
spd = 2;

// posição inicial
start_x = x;
start_y = y;

// calcula fim da linha
end_x = start_x + lengthdir_x(line_length, line_angle);
end_y = start_y + lengthdir_y(line_length, line_angle);

t = 0;
dir = 1;
