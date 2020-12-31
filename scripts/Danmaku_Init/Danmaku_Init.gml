#region //Library Macro's
#macro DanmakuProject_Version "0.0.1"
#macro DanmakuProject_Date    "2020-12-30"
#endregion

//show_debug_overlay(true);
DanmakuProject_Trace("Welcome To Danmaku Project by @OmegaX1000! This is version " + DanmakuProject_Version + ", " + DanmakuProject_Date);

global.master_barrage_group = ds_list_create(); //This holds all of the barrage groups that will be created.

function DanmakuProject_Trace(_message)
{
	var _string = "Danmaku Project: " + _message;
	show_debug_message(_string);
}