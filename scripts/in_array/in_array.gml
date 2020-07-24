/// @function in_array
/// @param needle 
/// @param haystack

/*
returns the key 
IF NOTHING FOUND RETURNS -1 because 0 could be an array element 
*/


var _countarray = array_length_1d(argument1);

for (var in_array_i = 0; in_array_i < _countarray; in_array_i ++) {

	if (argument1[in_array_i] == argument0) {
	
	    return in_array_i;
		break;
	}
}

return -1
