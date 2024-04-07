if is_undefined(ds_map_find_value(async_load, "id"))
    return;
if (ds_map_find_value(async_load, "id") == 103)
    trophy_handle_load_state()
