/// @function triggerHelper
/// @param _helper_id

helper_frame[argument0] = 0
helper_used[argument0] = true
	
var have_all_helpers_been_done = true
for (var _trigger_helper_i = 0; _trigger_helper_i < helper.size; ++_trigger_helper_i) {
	if (helper_used[_trigger_helper_i] == false) {
		have_all_helpers_been_done = false
	}
}
if (have_all_helpers_been_done) {
	helper_used_all = true
}

