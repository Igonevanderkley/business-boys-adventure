function scr_load_game() {
    if (file_exists("savefile.sav")) {
        var _buffer = buffer_load("savefile.sav");
        var _json_string = buffer_read(_buffer, buffer_string);
        buffer_delete(_buffer);

        var _data = json_parse(_json_string);
        
        with (obj_game_controller) {
            rebirths = _data.rebirths;
            rebirth_currency = _data.rebirth_currency;
            income_multiplier = _data.income_multiplier;
            rebirth_cost = _data.rebirth_cost;
        }
        global.money = _data.money;
        global.money_per_click = _data.money_per_click;
        global.money_per_second = _data.money_per_second;

        scr_reset_game();
    }
}
