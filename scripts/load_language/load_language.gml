
/* usage:
t.test

// change language with: 
load_language("eng")

If you enter a language that cant be found it will return the strings (this can be quite helpful) 
*/


enum wordLookup
{
	test = 0,					
	
	// PLAY
	play_pause=1,				
	play_besttime=2,			
		
	intro_interact_popup=3,	
	
	// MAIN MENU
	mainmenu_title=4,			
	mainmenu_play=5,			
		
	// HELPERS
	helper_name_0=6,			
	helper_name_1=7,						
	helper_name_2=8,						
	helper_name_3=9,						
	helper_name_4=10,						
	helper_name_5=11,						
	helper_name_6=12,						
	helper_name_7=13,						
	helper_name_8=14,			
							
	// GUI
	on=15,						
	off=16,					
	gui_controls_for_helpers=17	
}

global.local_list = [] // this is the top line of the language CSV file 
global.local_list_code = [] // this is the language code (taken from the second line of the CSV file)
global.local_count = 0
global.current_language = ""
global.local_unused_columns = 2 // how many columns to ignore because they are for descriptions etc

#region find data about languages and load initial one
localisation_csv = load_csv("localisation.csv")

// error if file not found 
if (localisation_csv == -1) {
	show_error("Cant load a language file",true)
}
global.local_count = ds_grid_width(localisation_csv)-global.local_unused_columns

// find the language you want 
for (var i = global.local_unused_columns; i < global.local_count+global.local_unused_columns; ++i) {
	global.local_list[i-global.local_unused_columns] = localisation_csv[# i,0]
	global.local_list_code[i-global.local_unused_columns] = localisation_csv[# i,1]
}

ds_grid_destroy(localisation_csv)
#endregion

/// @param _loading_this_language
#region load from file 
localisation_csv = load_csv("localisation.csv")
temp_all_text = ds_map_create() // put everything in here first and then into the struct

var number_of_text_messages = ds_grid_height(localisation_csv)
var column_of_language = 0
global.current_language = argument0


//log(global.local_count)

// find the language you want 
for (var i = global.local_unused_columns; i < global.local_count+global.local_unused_columns; ++i) {
	if (localisation_csv[# i,0] == argument0 or 
		localisation_csv[# i,1] == argument0) {
		log("Language loaded: " +string(argument0))
		column_of_language = i
		break;
	}
}

if (column_of_language == 0) {
	log("ERROR: When loading language couldnt find what one to load")
}

// every bit of text
for (var i = 1; i < number_of_text_messages; ++i) {
	ds_map_add(temp_all_text,localisation_csv[# 0,i],localisation_csv[# column_of_language,i])
}
#endregion

//Structs are new 2.3 function, need to replace with enum/array?
global.local_text[17] = "";


global.local_text[0]	= temp_all_text[? "test"];
global.local_text[1]	= temp_all_text[? "play_pause"];
global.local_text[2]	= temp_all_text[? "play_besttime"];
global.local_text[3]	= temp_all_text[? "intro_interact_popup"];
global.local_text[4]	= temp_all_text[? "mainmenu_title"];
global.local_text[5]   = temp_all_text[? "mainmenu_play"];
global.local_text[6]	= temp_all_text[? "helper_name_0"];
global.local_text[7]   = temp_all_text[? "helper_name_1"];
global.local_text[8]   = temp_all_text[? "helper_name_2"];
global.local_text[9]	= temp_all_text[? "helper_name_3"];
global.local_text[10]	= temp_all_text[? "helper_name_4"];
global.local_text[11]   = temp_all_text[? "helper_name_5"];
global.local_text[12]   = temp_all_text[? "helper_name_6"];
global.local_text[13]	= temp_all_text[? "helper_name_7"];	
global.local_text[14]	= temp_all_text[? "helper_name_8"];
global.local_text[15]	= temp_all_text[? "on"];
global.local_text[16]	= temp_all_text[? "off"];
global.local_text[17]	= temp_all_text[? "gui_controls_for_helpers"];




// tidy up this temp stuff for loading
ds_grid_destroy(localisation_csv)
ds_map_destroy(temp_all_text)

/*	
global.local_list = [] // this is the top line of the language CSV file 
global.local_list_code = [] // this is the language code (taken from the second line of the CSV file)
global.local_count = 0
global.current_language = ""
global.local_unused_columns = 2 // how many columns to ignore because they are for descriptions etc
*/
/*
log("superTest")
load_language(global.local_list[irandom(global.local_count-1)]) 
*/
#macro t global.local_text