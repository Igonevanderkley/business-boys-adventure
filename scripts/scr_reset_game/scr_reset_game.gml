function scr_reset_game() {
    global.money = 0;
    global.money_per_second = 1;
    global.money_per_click = 1;

    with (obj_upgrade) {
        instance_destroy();
    }
    
}
