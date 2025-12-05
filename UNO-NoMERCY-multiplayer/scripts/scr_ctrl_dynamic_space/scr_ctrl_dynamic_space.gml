function scr_ctrl_dynamic_space(base_space, margin, center, total) {
	var left_x  = center - margin;
	var right_x = center + margin;

	var total_space_needed = total * base_space;
	var usable_width = right_x - left_x;

	var compress = 1;
	if (total_space_needed > usable_width) {
		compress = usable_width / total_space_needed;
	}

	return base_space * compress;
}
