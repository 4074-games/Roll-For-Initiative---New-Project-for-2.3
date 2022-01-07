function load_data_from_file(_file) {

	var _buffer = buffer_load(_file);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	//show_debug_message(_string);
	
	var _json = json_decode(_string);
	return _json;


}
