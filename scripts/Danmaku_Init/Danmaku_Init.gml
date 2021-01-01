#region //Library Macro's
#macro DanmakuProject_Version "0.0.2"
#macro DanmakuProject_Date    "2021-1-1"
#macro DanmakuProject_Debug   true
#endregion
#region //Library Debug Mode
if (DanmakuProject_Debug == true)
{
	show_debug_overlay(DanmakuProject_Debug);
}
#endregion
#region //Library Introduction
DanmakuProject_Trace("Welcome To Danmaku Project by @OmegaX1000! This is version " + DanmakuProject_Version + ", " + DanmakuProject_Date);
#endregion
#region //Library Variables
global.master_barrage_group = ds_map_create(); //This holds all of the barrage that will be created.
global.barrage_key_list = ds_list_create(); //This list holds the keys for all of the barrage's in the ds map.
#endregion
#region //Library Basic Functions
function DanmakuProject_Trace(_message)
{
	var _string = "Danmaku Project: " + _message;
	show_debug_message(_string);
}
#endregion