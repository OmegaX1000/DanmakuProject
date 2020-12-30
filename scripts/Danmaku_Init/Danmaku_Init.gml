show_debug_overlay(true);

#macro DanmakuProject_Version "0.0.0"
#macro DanmakuProject_Date    "2020-12-30"

global.master_barrage_group = ds_list_create(); //This holds all of the barrage groups that will be created.

function DanmakuProject_Trace(_message)
{
	var _string = "Danmaku Project: " + _message;
	show_debug_message(_string);
}