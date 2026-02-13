// gravidade
vspd += grav;
if (vspd > 10) vspd = 10;

// ======================
// MOVIMENTO VERTICAL
// ======================

if (place_meeting(x, y + vspd, obj_ground)) {
    // aproxima até encostar
    while (!place_meeting(x, y + sign(vspd),  obj_ground)) {
        y += sign(vspd);
    }
    vspd = 0;
} else {
    y += vspd;
}

// ======================
// MOVIMENTO HORIZONTAL
// ======================

if (!place_meeting(x + hspd * dir, y, obj_ground)) {
    x += hspd * dir;
} else {
    dir *= -1;
}
