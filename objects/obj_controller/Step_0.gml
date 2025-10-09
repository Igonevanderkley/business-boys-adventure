if (!variable_global_exists("timer")) timer = 0;

timer += 1;

if (timer >= room_speed) {
    money += money_per_second;
    timer = 0;
}
