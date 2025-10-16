function scr_save_game() {
    var _data = {
        rebirths: obj_game_controller.rebirths,
        rebirth_currency: obj_game_controller.rebirth_currency,
        income_multiplier: obj_game_controller.income_multiplier,
        rebirth_cost: obj_game_controller.rebirth_cost,
        money: global.money,
        money_per_click: global.money_per_click,
        money_per_second: global.money_per_second
    };

    var _json_string = json_stringify(_data);
    var _buffer = buffer_create(string_byte_length(_json_string) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _json_string);
    buffer_save(_buffer, "savefile.sav");
    buffer_delete(_buffer);
}
