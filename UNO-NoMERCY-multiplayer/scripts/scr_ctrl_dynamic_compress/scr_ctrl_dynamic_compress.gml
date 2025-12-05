function scr_ctrl_dynamic_compress(index, base_space, margin, center, total) {
	// - Dynamic Compress Config -
		var left_x     = center - margin;
		var right_x    = center + margin;
		var total_space_needed = total * base_space;	
		var usable_width = right_x - left_x;
		var compress = 1;
	    if (total_space_needed > usable_width) {compress = usable_width / total_space_needed;}
	    var card_space = base_space * compress;
	    var total_width_actual = total * card_space;
		
	    var start_x = center - (total_width_actual * 0.5);

	return start_x + (index * card_space);
}