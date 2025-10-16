function scr_perform_rebirth() {
    with (obj_game_controller) {
        rebirths++;

        rebirth_currency += floor(global.money / 10000);

        income_multiplier = 1 + (rebirths * 0.15);

        scr_reset_game();

        scr_save_game();
    }
}
